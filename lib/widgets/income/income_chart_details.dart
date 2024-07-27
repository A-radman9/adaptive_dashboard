import 'package:adaptive_dashboard/models/income_chart_details_model.dart';
import 'package:adaptive_dashboard/utils/app_style.dart';
import 'package:flutter/material.dart';

class IncomeChartDetails extends StatelessWidget {
  static List<IncomeChartDetailsModel> items = [
    IncomeChartDetailsModel(color:  Color(0xFF208BC7), title: 'Design service', percent: '40%',),
    IncomeChartDetailsModel(color:  Color(0xFF4DB7F2), title: 'Design product', percent: '25%',),
    IncomeChartDetailsModel(color:  Color(0xFF208BC7), title: 'Product royalty', percent: '20%',),
    IncomeChartDetailsModel(color:  Color(0xFFE2DECD), title: 'Other', percent: '20%',),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(items.length, (index) {
        return  ListTile(
          leading: Container(
            width: 12,
            height: 12,
            decoration: ShapeDecoration(
              color: items[index].color,
              shape: OvalBorder(),
            ),
          ),
          title: Text(
            items[index].title,
            style: AppStyle.styleRegular16(context),
          ),
          trailing: Text(
            items[index].percent,
              style: AppStyle.styleMedium16(context).copyWith(
                color: Color(0xFF208CC8),
              ),),
        );
      },).toList()
    );
  }
}
