import 'package:adaptive_dashboard/widgets/custom_background_container.dart';
import 'package:flutter/material.dart';

import 'all_expenses_header.dart';
import 'all_expenses_items_list.dart';

class AllExpenses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(
            height: 16.0,
          ),
          AllExpensesItemsList(),
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}
