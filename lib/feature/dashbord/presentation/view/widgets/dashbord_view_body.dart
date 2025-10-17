import 'package:dashboard/feature/dashbord/presentation/view/widgets/all_Expenses.dart';
import 'package:dashboard/feature/dashbord/presentation/view/widgets/custom_drawer.dart';
import 'package:dashboard/feature/dashbord/presentation/view/widgets/quick_invoice.dart';
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
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.only(top: 20, right: 24),
            child: Column(
              children: [AllExpenses(), SizedBox(height: 15), QuickInvoice()],
            ),
          ),
        ),
        Expanded(child: SizedBox()),
      ],
    );
  }
}
