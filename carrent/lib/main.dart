import 'package:carrent/Configs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Features/Auth/Login/View/LoginPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configs();
  runApp(const CarRent());
}

class CarRent extends StatelessWidget {
  const CarRent({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
