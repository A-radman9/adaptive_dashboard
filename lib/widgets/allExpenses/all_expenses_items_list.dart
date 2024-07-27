import 'package:adaptive_dashboard/models/all_expenses_items_model.dart';
import 'package:adaptive_dashboard/utils/assets.dart';
import 'package:flutter/material.dart';

import 'all_expenses_items.dart';

class AllExpensesItemsList extends StatefulWidget {
  @override
  State<AllExpensesItemsList> createState() => _AllExpensesItemsListState();
}

class _AllExpensesItemsListState extends State<AllExpensesItemsList> {
  static List<AllExpensesItemsModel> model = [
    AllExpensesItemsModel(
      image: Assets.imagesBalance,
      title: 'Balance',
      date: 'April 2022',
      price: r'$20,129',
    ),
    AllExpensesItemsModel(
      image: Assets.imagesIncome,
      title: 'Income',
      date: 'April 2022',
      price: r'$20,129',
    ),
    AllExpensesItemsModel(
      image: Assets.imagesExpenses,
      title: 'Expenses',
      date: 'April 2022',
      price: r'$20,129',
    ),
  ];
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selected = 0;
              });
            },
            child: AllExpensesItems(
              model: model[0],
              isActive: selected == 0,
            ),
          ),
        ),
        SizedBox(width: 12,),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selected = 1;
              });
            },
            child: AllExpensesItems(
              model: model[1],
              isActive: selected == 1,
            ),
          ),
        ),
        SizedBox(width: 12,),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selected = 2;
              });
            },
            child: AllExpensesItems(
              model: model[2],
              isActive: selected == 2,
            ),
          ),
        ),
      ],
    );
  }
}
