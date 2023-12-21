import 'package:carrent/GeneralWidgets/CustomButton.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../../Core/Car/AddNewCar/View/AddNewCar.dart';
import '../../../Core/Car/MyCars/View/MyCars.dart';
import '../../../Core/Rents/My Rents/view/MyRents.dart';
import '../../../Core/Rents/RentCar/view/RentCar.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            children: [
              CustomButton(
                text: 'Add new car',
                onTap: () {
                  Get.to(() => const AddNewCarPage());
                },
              ),
              const Gap(20),
              CustomButton(
                text: 'My cars',
                onTap: () {
                  Get.to(() => const MyCarsPage());
                },
              ),
              const Gap(20),
              CustomButton(
                text: 'Rent Car',
                onTap: () {
                  Get.to(() => const AddRentCar());
                },
              ),
              const Gap(20),
              CustomButton(
                text: 'My Rents',
                onTap: () {
                  Get.to(() => const MyRentsPage());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
