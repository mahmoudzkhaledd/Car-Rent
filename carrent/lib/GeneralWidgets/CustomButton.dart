import 'package:carrent/Shared/SharedTextStyles.dart';
import 'package:flutter/material.dart';
import '../Shared/AppColors.dart';

import 'AppText.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.borderd,
    this.backgroundColor = AppColors.text,
    this.textColor = Colors.white,
    this.horizontalPadding,
    this.verticalPadding = 10,
    required this.onTap,
    this.fontSize,
    this.borderWidth,
    this.icon,
    this.filled,
    this.borderColor,
    this.textStyle,
    this.borderRadius = 5,
  });
  final TextStyle? textStyle;
  final Widget? icon;
  final String text;
  final bool? borderd;
  final Color backgroundColor;
  final Color textColor;
  final Color? borderColor;
  final double? horizontalPadding;
  final double? verticalPadding;
  final VoidCallback onTap;
  final double? fontSize;
  final double? borderWidth;
  final double borderRadius;
  final bool? filled;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color: filled != false ? backgroundColor : null,
          border: borderd == true
              ? Border.all(
                  width: borderWidth ?? 0,
                  color: borderColor ?? AppColors.primary,
                )
              : null,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding ?? 24,
          vertical: verticalPadding ?? 14,
        ),
        child: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: AppText(
                  text,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: textStyle ??
                      FontStyles.body.copyWith(color: Colors.white),
                ),
              ),
              if (icon != null)
                Row(
                  children: [
                    const SizedBox(width: 10),
                    icon!,
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
