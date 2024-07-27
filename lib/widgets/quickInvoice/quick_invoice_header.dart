import 'package:adaptive_dashboard/utils/app_style.dart';
import 'package:flutter/material.dart';

class QuickInvoiceHeader extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Quick Invoice',style: AppStyle.styleSemiBold20(context),),
        Spacer(),
        Container(
          width: 48,
          height: 48,
          decoration: ShapeDecoration(
            color: Color(0xFFFAFAFA),
            shape: OvalBorder(),
          ),
          child: Icon(Icons.add, color: Color(0xff4EB7F2),),
        ),
      ],
    );
  }
}
