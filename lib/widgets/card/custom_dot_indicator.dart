import 'package:flutter/material.dart';

class CustomDotIndicator extends StatelessWidget {
  final bool isActive;

  const CustomDotIndicator({super.key, required this.isActive});
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        duration: Duration(milliseconds: 300),
        width: isActive ? 32 : 8,
        height: 8,
        decoration: ShapeDecoration(
          color: isActive ? Color(0xFF4DB7F2) : Color(0xFFE7E7E7),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        )
    );
  }
}