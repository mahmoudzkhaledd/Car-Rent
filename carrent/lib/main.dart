import 'package:carrent/Configs.dart';
import 'package:carrent/Features/Auth/SplashScreen/View/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'GeneralWidgets/AppText.dart';
import 'Shared/AppColors.dart';
import 'Shared/Fonts/FontModel.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configs();
  runApp(const CarRent());
}

class CarRent extends StatelessWidget {
  const CarRent({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      locale: Locale(
        AppText.defaultLanguage == TextLanguage.arabic ? 'ar' : "en",
      ),
      supportedLocales: const [
        Locale("ar"),
        Locale("en"),
      ],
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: AppColors.background,
        appBarTheme: AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          backgroundColor: Colors.transparent,
          titleTextStyle: TextStyle(
            fontFamily: FontFamily.bold,
            fontSize: 17,
            color: Colors.black,
          ),
          foregroundColor: Colors.black,
          elevation: 0,
        ),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
