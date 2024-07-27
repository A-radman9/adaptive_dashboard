import 'package:adaptive_dashboard/utils/app_style.dart';
import 'package:adaptive_dashboard/widgets/lastTransactions/transaction_history_header.dart';
import 'package:adaptive_dashboard/widgets/lastTransactions/transaction_history_list_view.dart';
import 'package:flutter/material.dart';

class TransactionHistory extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransactionHistoryHeader(),
        SizedBox(height: 20,),
        Text(
          '13 April 2022',
          style:AppStyle.styleMedium16(context).copyWith(color: Color(0xFFAAAAAA),),
        ),
        SizedBox(height: 16,),
        TransactionHistoryListView(),
      ],
    );
  }
}

