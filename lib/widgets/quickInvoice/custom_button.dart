import 'package:adaptive_dashboard/utils/app_style.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {

  final Color? buttonColor, textColor;

  const CustomButton({super.key, this.buttonColor, this.textColor});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12),),
          backgroundColor: buttonColor ?? Color(0xFF4DB7F2),
          elevation: 0,
        ),
        onPressed: () {},
        child: Text(
          'Send Money',
          style: AppStyle.styleSemiBold18(context).copyWith(color: textColor),
        ),
      ),
    );
  }
}
