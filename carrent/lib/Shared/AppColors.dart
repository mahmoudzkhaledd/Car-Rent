import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color.fromRGBO(93, 59, 229, 1);
  static const Color secondary = Color.fromRGBO(56, 56, 56, 1);
  static const Color secondarySelect = Color.fromRGBO(56, 56, 56, 1);
  static const Color background = Color.fromRGBO(255, 255, 255, 1);
  static const Color text = Color.fromRGBO(19, 19, 19, 1);
  static const Color textFade = Color.fromRGBO(102, 102, 102, 1);
  static const Color borderText = Color.fromRGBO(237, 235, 235, 1);
  static const Color textInvert = Color.fromRGBO(255, 255, 255, 1);
  static final borderObj = OutlineInputBorder(
    borderSide: const BorderSide(color: borderText),
    borderRadius: BorderRadius.circular(10),
  );
}
