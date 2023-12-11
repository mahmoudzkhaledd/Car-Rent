import 'package:flutter/material.dart';

import '../Shared/AppColors.dart';
import '../Shared/Fonts/FontModel.dart';
import 'AppText.dart';

class CustomRadioButton<T> extends StatelessWidget {
  const CustomRadioButton(
      {super.key,
      required this.text,
      required this.value,
      required this.groupValue,
      required this.onChanged});
  final String text;
  final T value;
  final T groupValue;
  final void Function(T?) onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio<T>(
          activeColor: AppColors.mainColor,
          value: value,
          groupValue: groupValue,
          onChanged: onChanged,
        ),
        AppText(
          text,
          style: TextStyle(fontFamily: FontFamily.medium, fontSize: 16),
        )
      ],
    );
  }
}
