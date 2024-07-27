import 'package:adaptive_dashboard/widgets/allExpenses/all_expenses_and_quick_invoice.dart';
import 'package:adaptive_dashboard/widgets/card/my_cards_and_transaction_history.dart';
import 'package:adaptive_dashboard/widgets/income/income.dart';
import 'package:flutter/material.dart';


class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AllExpensesAndQuickInvoice(),
              SizedBox(height: 24,),
              MyCardsAndTransactionHistory(),
              SizedBox(height: 24,),
              Income(),
            ],
          ) ,
        )
      ],
    );
  }
}
