import 'package:flutter/material.dart';

import 'AppText.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.icon,
    this.horizontalPadding,
    this.verticalPadding,
    required this.onTap,
    this.backColor,
    this.bordered,
    this.iconColor,
    this.text,
    this.borderRadius,
    this.iconSize,
  });

  final bool? bordered;
  final VoidCallback onTap;
  final IconData icon;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? borderRadius;
  final double? iconSize;
  final Color? backColor;
  final Color? iconColor;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      clipBehavior: Clip.hardEdge,
      borderRadius: BorderRadius.circular(borderRadius ?? 10),
      child: Material(
        child: InkWell(
          onTap: onTap,
          child: Ink(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: backColor ?? Colors.white,
              border: bordered == true
                  ? Border.all(
                      width: 2,
                      color: Colors.black,
                    )
                  : null,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: horizontalPadding ?? 20,
              vertical: verticalPadding ?? 20,
            ),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    icon,
                    color: iconColor,
                    size: iconSize,
                  ),
                  if (text != null)
                    AppText(
                      text!,
                      style: const TextStyle(
                        fontSize: 12,
                      ),
                    )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}