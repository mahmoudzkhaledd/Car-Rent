import 'package:bloc/bloc.dart';
import 'package:carrent/Features/Core/Rents/Services/RentServices.dart';
import 'package:carrent/Helper/Helper.dart';
import 'package:carrent/Models/Rent.dart';
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
    }

    emit(RentDetailsSuccessState());
  }

  void suspenseRent() async {
    bool res = await Helper.showYesNoMessage(
      "title",
      "message",
    );
  }
}
