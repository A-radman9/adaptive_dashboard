import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int isSelected = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        getPieChartData(),
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
            radius: isSelected == 0 ? 60 : 50,
            color: Color(0xFF208BC7),
            showTitle: false,
            value: 40,
          ),
          PieChartSectionData(
            radius: isSelected == 1 ? 60 : 50,
            color: Color(0xFF4DB7F2),
            showTitle: false,
            value: 25,
          ),
          PieChartSectionData(
            radius: isSelected == 2 ? 60 : 50,
            color: Color(0xFF064060),
            showTitle: false,
            value: 20,
          ),
          PieChartSectionData(
            radius: isSelected == 3 ? 60 : 50,
            color: Color(0xFFE2DECD),
            showTitle: false,
            value: 22,
          ),
        ]);
  }
}
