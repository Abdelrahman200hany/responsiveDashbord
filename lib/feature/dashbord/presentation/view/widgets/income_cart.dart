import 'package:dashboard/core/uitls/font_stylies.dart';
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
          color: Colors.amberAccent,
          title: currentTouchedSec == 0 ? 'Direct' : '40%',
          value: 40,
          titlePositionPercentageOffset: currentTouchedSec == 0 ? 1.5 : 0,
          titleStyle: AppStyles.styleMedium16(context).copyWith(color: Colors.white),

          showTitle: false,
        ),
        PieChartSectionData(
          radius: currentTouchedSec == 1 ? 40 : 30,
          color: const Color(0xff4eb7f2),
          title: currentTouchedSec == 1 ? 'Referral' : '25%',
          titlePositionPercentageOffset: currentTouchedSec == 1 ? 1.5 : 0,
          titleStyle: AppStyles.styleMedium16(context).copyWith(color: Colors.white),

          value: 25,
          showTitle: false,
        ),
        PieChartSectionData(
          radius: currentTouchedSec == 2 ? 40 : 30,
          color: const Color(0xff064061),
          title: currentTouchedSec == 2 ? 'Socail' : '20%',
          titlePositionPercentageOffset: currentTouchedSec == 2 ? 1.5 : 0,
          titleStyle: AppStyles.styleMedium16(context).copyWith(color: Colors.white),
          value: 20,
          showTitle: false,
        ),
        PieChartSectionData(
          radius: currentTouchedSec == 3 ? 40 : 30,
          color: const Color(0xffe2decd),
          title: currentTouchedSec == 3 ? 'Others' : '15%',
          titlePositionPercentageOffset: currentTouchedSec == 3 ? 1.5 : 0,
          titleStyle: AppStyles.styleMedium16(context).copyWith(color: Colors.white),

          value: 15,
          showTitle: false,
        ),
      ],
    );
  }
}

/*                  */
//
//
//
//
class IncomeCartData extends StatefulWidget {
  const IncomeCartData({super.key});

  @override
  State<IncomeCartData> createState() => _IncomeCartData();
}

class _IncomeCartData extends State<IncomeCartData> {
  int currentTouchedSec = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: PieChart(getCartData()),
      ),
    );
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
          radius: currentTouchedSec == 0 ? 50 : 40,
          color: const Color.fromARGB(255, 97, 179, 30),
          title: currentTouchedSec == 0 ? 'Direct' : '40%',
          value: 40,
          titlePositionPercentageOffset: currentTouchedSec == 0 ? 1.5 : null,
          titleStyle: AppStyles.styleRegular16(context).copyWith(
            color: currentTouchedSec == 0 ? Colors.black : Colors.white,
          ),

          showTitle: true,
        ),
        PieChartSectionData(
          radius: currentTouchedSec == 1 ? 50 : 40,
          color: const Color(0xff4eb7f2),
          title: currentTouchedSec == 1 ? 'Referral' : '25%',
          titlePositionPercentageOffset: currentTouchedSec == 1 ? 1.8 : null,
          titleStyle: AppStyles.styleRegular16(context).copyWith(
            color: currentTouchedSec == 1 ? Colors.black : Colors.white,
          ),

          value: 25,
          showTitle: true,
        ),
        PieChartSectionData(
          badgePositionPercentageOffset: 1,
          color: const Color(0xff064061),
          title: currentTouchedSec == 2 ? 'Social' : '20%',
          titlePositionPercentageOffset: currentTouchedSec == 2 ? 1.3 : null,
          titleStyle: AppStyles.styleRegular16(context).copyWith(
            color: currentTouchedSec == 2 ? Colors.black : Colors.white,
            
          ),
          value: 20,
          showTitle: true,
        ),
        PieChartSectionData(
          radius: currentTouchedSec == 3 ? 50 : 40,
          color: const Color(0xffe2decd),
          title: currentTouchedSec == 3 ? 'Others' : '15%',
          titlePositionPercentageOffset: currentTouchedSec == 3 ? 1.6 : null,
          titleStyle: AppStyles.styleRegular16(context).copyWith(
            color: currentTouchedSec == 3 ? Colors.black : Colors.white,
          ),

          value: 15,
          showTitle: true,
        ),
      ],
    );
  }
}
