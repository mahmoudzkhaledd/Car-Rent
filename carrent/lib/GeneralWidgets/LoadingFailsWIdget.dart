import 'package:flutter/material.dart';

import 'AppText.dart';
import 'Image.dart';

class LoadingFailsWidget extends StatelessWidget {
  const LoadingFailsWidget({
    super.key,
    required this.title,
    required this.image,
    this.imageWidth,
  });
  final String title;
  final String? image;
  final double? imageWidth;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (image != null)
            CustomImage(
              image!,
              width: imageWidth ?? 200,
            ),
          AppText(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
