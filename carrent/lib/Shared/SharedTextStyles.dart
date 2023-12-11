import 'package:carrent/Shared/AppColors.dart';
import 'package:flutter/material.dart';

import 'Fonts/FontModel.dart';

class FontStyles {
  static TextStyle p = TextStyle(
    fontSize: 14,
    fontFamily: FontFamily.regular,
    color: AppColors.textFade,
  );
  static TextStyle small = TextStyle(
    fontSize: 12,
    fontFamily: FontFamily.regular,
    color: AppColors.text,
  );
  static TextStyle body = TextStyle(
    fontSize: 16,
    fontFamily: FontFamily.regular,
    color: AppColors.text,
  );
  static TextStyle input = TextStyle(
    fontSize: 16,
    fontFamily: FontFamily.medium,
    color: AppColors.text,
  );
  static TextStyle title = TextStyle(
    fontSize: 22,
    fontFamily: FontFamily.bold,
    color: AppColors.text,
  );
  static TextStyle bigTitle = TextStyle(
    fontSize: 35,
    fontFamily: FontFamily.black,
    color: AppColors.text,
  );
  static TextStyle listTitle = TextStyle(
    fontSize: 16,
    fontFamily: FontFamily.bold,
    color: AppColors.text,
  );
}
