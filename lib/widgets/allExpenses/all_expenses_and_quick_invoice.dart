import 'package:adaptive_dashboard/widgets/quickInvoice/quick_invoice.dart';
import 'package:flutter/material.dart';

import 'all_expenses.dart';

class AllExpensesAndQuickInvoice extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [

        AllExpenses(),
        SizedBox(
          height: 24.0,
        ),
        QuickInvoice(),
      ],
    );
  }
}
