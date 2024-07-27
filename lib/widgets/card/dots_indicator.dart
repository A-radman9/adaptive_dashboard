import 'package:flutter/material.dart';

import 'custom_dot_indicator.dart';

class DotsIndicator extends StatelessWidget {
  final int currentPageIndicator;

  const DotsIndicator({super.key, required this.currentPageIndicator});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(3, (index) => CustomDotIndicator(isActive: index == currentPageIndicator),),
    );
  }
}
