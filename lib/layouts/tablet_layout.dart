import 'package:adaptive_dashboard/widgets/allExpenses/all_expenses_and_quick_invoice.dart';
import 'package:adaptive_dashboard/widgets/card/my_cards_and_transaction_history.dart';
import 'package:adaptive_dashboard/widgets/drawer/custom_drawer.dart';
import 'package:adaptive_dashboard/widgets/income/income.dart';
import 'package:flutter/material.dart';

class TabletLayout extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32,),
        Expanded(
          flex: 3,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AllExpensesAndQuickInvoice(),
                      SizedBox(height: 24,),
                      MyCardsAndTransactionHistory(),
                      SizedBox(height: 24,),
                      Income()
                    ],
                  ),
                ) ,
              )
            ],
          ),
        ),
      ],
    );
  }
}
