import 'package:flutter/material.dart';

import '../../utils/app_style.dart';
import 'latest_transaction_list.dart';

class LatestTransaction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: AppStyle.styleMedium16(context),
        ),
        SizedBox(
          height: 12,
        ),
        LatestTransactionList(),
        Divider(height: 48,),
      ],
    );
  }
}
