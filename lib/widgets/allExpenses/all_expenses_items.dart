import 'package:adaptive_dashboard/models/all_expenses_items_model.dart';

import 'package:flutter/material.dart';

import 'active_and_inactive_all_expenses_items.dart';


class AllExpensesItems extends StatelessWidget {

  final AllExpensesItemsModel model;
  final bool isActive;

  const AllExpensesItems({super.key, required this.model, required this.isActive});
  @override
  Widget build(BuildContext context) {
    return isActive ? ActiveAllExpensesItem(model: model) : InActiveAllExpensesItem(model: model);
  }
}



