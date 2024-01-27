import 'package:carrent/Features/Core/Notifications/NotificationPage/View/NotificationPage.dart';
import 'package:carrent/Features/Home/HomePage/Widgets/HomePageBottomSheet.dart';
import 'package:carrent/GeneralWidgets/AppText.dart';
import 'package:carrent/GeneralWidgets/CustomIconButton.dart';
import 'package:carrent/Helper/Helper.dart';
import 'package:carrent/Shared/AppColors.dart';
import 'package:carrent/Shared/Fonts/FontModel.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class CustomAppBar2 extends StatelessWidget {
  const CustomAppBar2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        // gradient: LinearGradient(
        //   colors: [
        //     Color.fromRGBO(43, 69, 100, 1),
        //     Color.fromRGBO(8, 26, 48, 1),
        //   ],
        //   begin: Alignment.topLeft,
        //   end: Alignment.bottomRight,
        // ),
        color: AppColors.instance.primary,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(40),
          bottomRight: Radius.circular(40),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  Helper.showBottomSheetWidget(const HomePageBottomSheet());
                },
                icon: const Icon(
                  Icons.menu_rounded,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {
                  Get.to(() => const NotificationPage());
                },
                icon: const Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 40,
              right: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(20),
                Row(
                  children: [
                    Expanded(
                      child: AppText(
                        "Mohamed Ahmed",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontFamily: FontFamily.light,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                  ],
                ),
                AppText(
                  'Welcome Back',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontFamily: FontFamily.medium,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
