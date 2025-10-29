
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeCart extends StatefulWidget {
  const IncomeCart({super.key});

  @override
  State<IncomeCart> createState() => _IncomeCartState();
}

class _IncomeCartState extends State<IncomeCart> {
  int currentTouchedSec = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getCartData()));
  }

  getCartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pieTouchResponse) {
          currentTouchedSec =
              pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          radius: currentTouchedSec == 0 ? 40 : 30,
          color: const Color(0xff20bcc8),
          value: 40,
          showTitle: false,
        ),
        PieChartSectionData(
          radius: currentTouchedSec == 1 ? 40 : 30,
          color: const Color(0xff4eb7f2),
          value: 40,
          showTitle: false,
        ),
        PieChartSectionData(
          radius: currentTouchedSec == 2 ? 40 : 30,
          color: const Color(0xff064061),
          value: 40,
          showTitle: false,
        ),
        PieChartSectionData(
          radius: currentTouchedSec == 3 ? 40 : 30,
          color: const Color(0xffe2decd),
          value: 40,
          showTitle: false,
        ),
      ],
    );
  }
}
