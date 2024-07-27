import 'package:adaptive_dashboard/utils/app_style.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  int isSelected = -1;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: AspectRatio(
          aspectRatio: 1,
          child: PieChart(
            getPieChartData(),
          ),
        ),
      ),
    );
  }

  PieChartData getPieChartData() {
    return PieChartData(
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, pieTouchResponse) {
            isSelected =
                pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sectionsSpace: 0,
        sections: [
          PieChartSectionData(
            titlePositionPercentageOffset: isSelected == 0 ? 1.5 : null,
            radius: isSelected == 0 ? 60 : 50,
            titleStyle: isSelected == 0 ? AppStyle.styleRegular16(context) : AppStyle.styleRegular16(context).copyWith(color: Colors.white),
            title: isSelected == 0 ? 'Design service': '40',
            color: Color(0xFF208BC7),
            showTitle: true,
            value: 40,
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: isSelected == 1 ? 2.2 : null,
            radius: isSelected == 1 ? 60 : 50,
            titleStyle: isSelected == 1 ? AppStyle.styleRegular16(context) : AppStyle.styleRegular16(context).copyWith(color: Colors.white),
            title: isSelected == 1 ? 'Design product': '25',
            color: Color(0xFF4DB7F2),
            showTitle: true,
            value: 25,
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: isSelected == 2 ? 1.5 : null,
            radius: isSelected == 2 ? 60 : 50,
            titleStyle: isSelected == 2 ? AppStyle.styleRegular16(context) : AppStyle.styleRegular16(context).copyWith(color: Colors.white),
            title: isSelected == 2 ? 'Product royalty': '20',
            color: Color(0xFF064060),
            showTitle: true,
            value: 20,
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: isSelected == 3 ? 1.5 : null,
            radius: isSelected == 3 ? 60 : 50,
            titleStyle: isSelected == 3 ? AppStyle.styleRegular16(context) : AppStyle.styleRegular16(context).copyWith(color: Colors.white),
            title: isSelected == 3 ? 'other': '22',
            color: Color(0xFFE2DECD),
            showTitle: true,
            value: 22,
          ),
        ]);
  }
}
