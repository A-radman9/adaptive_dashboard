import 'package:adaptive_dashboard/widgets/card/my_cards_and_transaction_history.dart';
import 'package:adaptive_dashboard/widgets/drawer/custom_drawer.dart';
import 'package:adaptive_dashboard/widgets/income/income.dart';
import 'package:flutter/material.dart';

import '../widgets/allExpenses/all_expenses_and_quick_invoice.dart';


class DesktopLayout extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32.0,
        ),
        Expanded(
          flex: 3,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(flex: 2, child: Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: AllExpensesAndQuickInvoice(),
                    )),
                    SizedBox(
                      width: 24,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Column(
                          children: [
                            MyCardsAndTransactionHistory(),
                            SizedBox(height: 24,),
                            Expanded(child: Income()),

                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
