
import 'package:dashboard/feature/dashbord/presentation/view/widgets/all_expensess_and_quick_invioces_sec.dart';
import 'package:dashboard/feature/dashbord/presentation/view/widgets/custom_drawer.dart';
import 'package:dashboard/feature/dashbord/presentation/view/widgets/mycard_and_transection_history_and_income_sec.dart';
import 'package:flutter/material.dart';

class DesktopDashBordView extends StatelessWidget {
  const DesktopDashBordView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Expanded(child: CustomDrawer()),

        SizedBox(width: 32),

        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.only(top: 20, right: 24),
            child: AllExpensesAndQuickInvoiceSection(),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 20, right: 32),
            child: MyCardAndTransectionHitoryAndIncomeSec(),
          ),
        ),
      ],
    );
  }
}