import 'package:adaptive_dashboard/widgets/income/detailed_income_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'income_chart.dart';
import 'income_chart_details.dart';

class IncomeBody extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width >= 1200 && width <= 1750 ? DetailedIncomeChart() :
    Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(child: IncomeChart()),
        Expanded(flex : 2, child: IncomeChartDetails()),

      ],
    );
  }
}
