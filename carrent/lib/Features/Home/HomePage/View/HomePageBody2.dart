import 'package:carrent/Features/Home/HomePage/View/Widgets/CustomAppBar2.dart';
import 'package:carrent/Features/Home/HomePage/View/Widgets/OptionsList.dart';
import 'package:carrent/Features/Home/HomePage/Widgets/CustomAppBar.dart';
import 'package:carrent/Features/Home/HomePage/Widgets/OptionsRow.dart';
import 'package:carrent/Features/Home/HomePage/Widgets/RecentRents.dart';
import 'package:carrent/GeneralWidgets/AppText.dart';
import 'package:carrent/GeneralWidgets/CustomContainer.dart';
import 'package:carrent/Shared/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomePageBody2 extends StatelessWidget {
  const HomePageBody2({super.key});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {},
      child: const Column(
        children: [
          CustomAppBar2(),
          Gap(20),
          OptionsList(),
        ],
      ),
    );
  }
}
