import 'package:flutter/material.dart';

class CustomBackgroundContainer extends StatelessWidget {

  final double? padding;
  final Widget child;

  const CustomBackgroundContainer({super.key, this.padding, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.all(padding ?? 20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: child,
    );
  }
}
