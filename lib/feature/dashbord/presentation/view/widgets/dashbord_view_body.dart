import 'package:dashboard/feature/dashbord/presentation/view/widgets/all_Expenses.dart';
import 'package:dashboard/feature/dashbord/presentation/view/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class DashBordViewBody extends StatelessWidget {
  const DashBordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),

        SizedBox(width: 32),

        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.only(top: 40, right: 24, bottom: 32),
            child: Column(children: [AllExpenses()]),
          ),
        ),
        Expanded(child: SizedBox()),
      ],
    );
  }
}
