import 'package:adaptive_dashboard/widgets/quickInvoice/title_text_field.dart';
import 'package:flutter/material.dart';

import 'custom_button.dart';

class QuickInvoiceForm extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: TitleTextField(title: 'Customer name',hint: 'Type customer name',)),
            SizedBox(width: 16.0,),
            Expanded(child: TitleTextField(title: 'Customer Email',hint: 'Type customer email',)),
          ],
        ),
        SizedBox(
          height: 24.0,
        ),
        Row(
          children: [
            Expanded(child: TitleTextField(title: 'Item name', hint: 'Type customer name',)),
            SizedBox(width: 16.0,),
            Expanded(child: TitleTextField(title: 'Item mount', hint: 'USD',)),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(child: CustomButton(buttonColor: Colors.white,textColor: Color(0xff4EB7F2),),),
            SizedBox(
              width: 24,
            ),
            Expanded(child: CustomButton()),
          ],
        ),
      ],
    );
  }
}
