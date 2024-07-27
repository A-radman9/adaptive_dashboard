import 'package:flutter/material.dart';

import '../income/income.dart';
import 'my_cards_and_transaction_history.dart';

class MyCardsAndTransactionsAndIncome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              MyCardsAndTransactionHistory(),
              SizedBox(
                height: 24,
              ),
              Expanded(child: Income()),
            ],
          ),
        )
      ],
    );
  }
}
