import 'package:adaptive_dashboard/utils/app_style.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hint;

  const CustomTextField({super.key, required this.hint});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: AppStyle.styleRegular14(context).copyWith(color: Color(0xFFAAAAAA),),
        fillColor:  Color(0xFFFAFAFA),
        focusColor: Color(0xFFFAFAFA),
        filled: true,
        border: buildBorder(),
        focusedBorder: buildBorder(),
        enabledBorder: buildBorder(),

      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          color: Color(0xFFFAFAFA),
        ),
      );
  }
}
