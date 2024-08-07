import 'package:bloc/bloc.dart';
import 'package:carrent/Features/Core/Rents/Services/RentServices.dart';
import 'package:carrent/Helper/Helper.dart';
import 'package:carrent/Models/Rent.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'rent_details_state.dart';

class RentDetailsCubit extends Cubit<RentDetailsState> {
  RentDetailsCubit(this.rentId) : super(RentDetailsInitial()) {
    getData();
  }
  Rent? rent;
  final String rentId;
  final services = RentServices();

  void getData() async {
    emit(RentDetailsLoadingState());
    rent = await services.getRent(rentId);

    if (rent == null) {
      emit(RentDetailsFailedState());
      return;
    }

    emit(RentDetailsSuccessState());
  }

  void suspenseRent() async {
    bool ans = await Helper.showYesNoMessage(
      "Delete Rent",
      "Are you sure you want to delete this rent?",
    );
    if (!ans || rent == null) return;
    final res = await services.deleteRent(rent!.id);
    if (res != null) {
      await Helper.showMessage(
        "Error While deleting Rent",
        res,
      );
      return;
    }
    await Helper.showMessage(
      "Succeful Operation",
      "Rent deleted succefully",
      icon: Icons.check_circle,
    );
  }
}
