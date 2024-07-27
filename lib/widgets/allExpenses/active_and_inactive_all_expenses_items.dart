import 'package:adaptive_dashboard/models/all_expenses_items_model.dart';
import 'package:adaptive_dashboard/utils/app_style.dart';
import 'package:flutter/material.dart';

import 'all_expenses_items_header.dart';



class InActiveAllExpensesItem extends StatelessWidget {
  const InActiveAllExpensesItem({
    super.key,
    required this.model,
  });

  final AllExpensesItemsModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemsHeader(image: model.image,),
          SizedBox(
            height: 34.0,
          ),
          FittedBox(fit: BoxFit.scaleDown, child: Text(model.title, style: AppStyle.styleSemiBold16(context),)),
          SizedBox(
            height: 8.0,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
                model.date,
                style: AppStyle.styleRegular14(context)
            ),
          ),
          SizedBox(
            height: 16.0,
          ),
          FittedBox(fit: BoxFit.scaleDown, child: Text(model.price, style: AppStyle.styleSemiBold24(context),)),

        ],
      ),
    );
  }
}

class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({
    super.key,
    required this.model,
  });

  final AllExpensesItemsModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Color(0xFF4DB7F2),
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemsHeader(image: model.image ,imageColor: Colors.white,imageBackgroundColor: Colors.white.withOpacity(0.10000000149011612),),
          SizedBox(
            height: 34.0,
          ),
          FittedBox(fit: BoxFit.scaleDown, child: Text(model.title, style: AppStyle.styleSemiBold16(context).copyWith(color: Colors.white),)),
          SizedBox(
            height: 8.0,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
                model.date,
                style: AppStyle.styleRegular14(context).copyWith(color: Color(0xFFFAFAFA),)
            ),
          ),
          SizedBox(
            height: 16.0,
          ),
          FittedBox(fit: BoxFit.scaleDown, child: Text(model.price, style: AppStyle.styleSemiBold24(context).copyWith(color: Colors.white,),)),

        ],
      ),
    );
  }
}