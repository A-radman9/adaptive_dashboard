import 'package:flutter/material.dart';

import '../../utils/app_style.dart';
import 'custom_text_field.dart';

class TitleTextField extends StatelessWidget {
  final String title, hint;

  const TitleTextField({super.key, required this.title, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyle.styleMedium16(context),
        ),
        CustomTextField(hint: hint,),
      ],
    );
  }
}
