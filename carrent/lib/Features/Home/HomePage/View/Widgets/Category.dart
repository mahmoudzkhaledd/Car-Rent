import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({
    super.key,
    this.widget,
    this.title,
    required this.onTap,
    this.color,
    this.topLeft = 0,
    this.topRight = 0,
    this.bottomLeft = 0,
    this.bottomRight = 0,
    this.circular = 20,
  });

  final Widget? widget;
  final Widget? title;
  final VoidCallback onTap;
  final Color? color;
  final double topLeft;
  final double topRight;
  final double bottomLeft;
  final double bottomRight;
  final double circular;
  final Color tmp = const Color.fromARGB(255, 242, 246, 248);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          color: Color.fromARGB(210, 220, 233, 244),
          // color: tmp,
          // color: color,
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
          borderRadius: circular != 0
              ? BorderRadius.circular(circular)
              : BorderRadius.only(
                  topLeft: Radius.circular(topLeft),
                  topRight: Radius.circular(topRight),
                  bottomLeft: Radius.circular(bottomLeft),
                  bottomRight: Radius.circular(bottomRight),
                ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (widget != null) widget!,
            if (title != null) title!,
          ],
        ),
      ),
    );
  }
}
