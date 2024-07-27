import 'package:adaptive_dashboard/widgets/lastTransactions/transaction_history_item.dart';
import 'package:flutter/material.dart';

import '../../models/transaction_history_model.dart';

class TransactionHistoryListView extends StatelessWidget {
  static List<TransactionHistoryModel> items = [
    TransactionHistoryModel(
        title: 'Cash Withdrawal',
        date: '13 Apr, 2022 ',
        amount: r'$20,129',
        isWithdrawal: true),
    TransactionHistoryModel(
        title: 'Landing Page project',
        date: '13 Apr, 2022 ',
        amount: r'$2,000',
        isWithdrawal: false),
    TransactionHistoryModel(
        title: 'Juni Mobile App project',
        date: '13 Apr, 2022 ',
        amount: r'$20,129',
        isWithdrawal: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(items.length, (index) {
      return TransactionHistoryItem(model: items[index],);
      },),
    );
  }
}
