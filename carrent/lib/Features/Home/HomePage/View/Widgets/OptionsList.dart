import 'package:carrent/Features/Core/Car/AddNewCar/View/AddNewCar.dart';
import 'package:carrent/Features/Core/Car/MyCars/View/MyCars.dart';
import 'package:carrent/Features/Core/Rents/My%20Rents/view/MyRents.dart';
import 'package:carrent/Features/Core/Rents/RentCar/view/RentCar.dart';
import 'package:carrent/Features/Home/HomePage/View/Widgets/Category.dart';
import 'package:carrent/GeneralWidgets/AppText.dart';
import 'package:carrent/Shared/Fonts/FontModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OptionsList extends StatelessWidget {
  const OptionsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CustomScrollView(
        primary: false,
        slivers: <Widget>[
          SliverPadding(
            padding: const EdgeInsets.all(30),
            sliver: SliverGrid.count(
              crossAxisSpacing: 30,
              mainAxisSpacing: 30,
              crossAxisCount: 2,
              children: <Widget>[
                Category(
                  onTap: () {
                    Get.to(() => const MyCarsPage());
                  },
                  title: AppText(
                    'Cars',
                    style: TextStyle(
                      color: const Color.fromRGBO(0, 66, 95, 1),
                      fontSize: 18,
                      fontFamily: FontFamily.medium,
                    ),
                  ),
                  widget: Image.asset(
                    'assets/images/car1.png',
                    width: 90,
                  ),
                  circular: 20,
                ),
                Category(
                  onTap: () {
                    Get.to(() => const RentCarPage());
                  },
                  title: AppText(
                    'Rent Car',
                    style: TextStyle(
                      color: const Color.fromRGBO(0, 66, 95, 1),
                      fontSize: 18,
                      fontFamily: FontFamily.medium,
                    ),
                  ),
                  widget: Image.asset(
                    'assets/images/rent1.png',
                    width: 90,
                  ),
                  circular: 20,
                ),
                Category(
                  onTap: () {
                    Get.to(() => const MyRentsPage());
                  },
                  title: AppText(
                    'Current Rents',
                    style: TextStyle(
                      color: const Color.fromRGBO(0, 66, 95, 1),
                      fontSize: 18,
                      fontFamily: FontFamily.medium,
                    ),
                  ),
                  widget: Image.asset(
                    'assets/images/rent3.png',
                    width: 90,
                  ),
                  circular: 20,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
