import 'package:carrent/Shared/AppColors.dart';
import 'package:carrent/Shared/SharedTextStyles.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../../../../../GeneralWidgets/AppText.dart';
import '../../../../../Shared/Fonts/FontModel.dart';
import '../../../../../services/GeneralServices/NetworkService.dart';
import '../../../../../services/GeneralServices/StorageService.dart';
import '../../../../Home/HomePage/View/HomePage.dart';
import '../../../StartingPage/View/StartingPage.dart';
import '../../Services/SplashScreenService.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({super.key});

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> fade;
  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    fade = Tween<double>(begin: 1, end: 0).animate(_controller);
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        _controller.forward();
      }
    });
    _controller.forward();
    WidgetsBinding.instance.addPostFrameCallback(loginTokne);
    super.initState();
  }

  void loginTokne(a) async {
    String? token = StorageServices.instance.getUserToken();

    if (token == null) {
      Get.offAll(() => const LandingPage());
      return;
    }
    NetworkService.refreshAccessToken(token);
    bool res = await SplashScreenService().checkAuth();
    if (res) {
      Get.offAll(() => const HomePage());
    } else {
      Get.offAll(() => const LandingPage());
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            FluentIcons.vehicle_car_48_regular,
            color: AppColors.text,
            size: 115,
          ),
          const SizedBox(height: 10),
          AnimatedBuilder(
            animation: fade,
            builder: (ctx, ani) => FadeTransition(
              opacity: fade,
              child: AppText(
                "Car Rent",
                style: FontStyles.title,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
