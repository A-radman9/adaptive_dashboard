import 'package:adaptive_dashboard/widgets/range_option.dart';
import 'package:flutter/material.dart';

import '../../utils/app_style.dart';

class IncomeHeader extends StatelessWidget {
  const IncomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
            'Income',
            style: AppStyle.styleSemiBold20(context)
        ),
        RangeOption(),
      ],
    );
  }
}
