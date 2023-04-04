import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DotsIndicator extends StatelessWidget {
  DotsIndicator(
      {Key? key,
      required this.activeIndex,
      required this.itemCount,
      this.activeColor,
      this.dotsColors})
      : super(key: key);

  int activeIndex;
  int itemCount;
  Color? activeColor;
  Color? dotsColors;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(itemCount, (index) {
        if (activeIndex == index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 4),
            height: 8,
            width: 64,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: activeColor ?? Colors.blue),
          );
        } else {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 4),
            height: 8,
            width: 16,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: dotsColors ?? Colors.blue),
          );
        }
      }),
    );
  }
}
