import 'package:adaptive_dashboard/models/transaction_history_model.dart';
import 'package:adaptive_dashboard/utils/app_style.dart';
import 'package:flutter/material.dart';

class TransactionHistoryItem extends StatelessWidget {

  final TransactionHistoryModel model;

  const TransactionHistoryItem({super.key, required this.model});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Color(0xFFFAFAFA),
      child: ListTile(
        title: Text(
          model.title,
          style: AppStyle.styleSemiBold16(context),
        ),
        subtitle: Text(
          model.date,
          style: AppStyle.styleRegular16(context).copyWith(color: Color(0xFFAAAAAA))
        ),
        trailing: Text(
          model.amount,
          style: AppStyle.styleSemiBold20(context).copyWith(color: model.isWithdrawal ? Color(0xffF3735E) : Color(0xff7DD97B),),
        ),
      ),
    );
  }
}
