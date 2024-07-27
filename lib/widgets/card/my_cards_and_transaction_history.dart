import 'package:adaptive_dashboard/widgets/custom_background_container.dart';
import 'package:adaptive_dashboard/widgets/lastTransactions/transaction_history.dart';
import 'package:flutter/material.dart';

import 'my_cards_section.dart';

class MyCardsAndTransactionHistory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          MyCardsSection(),
          Divider(height: 40,),
          TransactionHistory(),
        ],
      ),
    );
  }
}
