import 'package:adaptive_dashboard/utils/app_style.dart';
import 'package:adaptive_dashboard/widgets/range_option.dart';
import 'package:flutter/material.dart';

class AllExpensesHeader extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('All Expenses', style: AppStyle.styleSemiBold20(context),),
        Spacer(),
        RangeOption(),
      ],
    );
  }
}


