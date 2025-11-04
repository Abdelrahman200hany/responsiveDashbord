import 'package:dashboard/feature/dashbord/presentation/view/widgets/all_expense_header.dart';
import 'package:dashboard/feature/dashbord/presentation/view/widgets/all_expenses_body_list.dart';
import 'package:dashboard/feature/dashbord/presentation/view/widgets/custom_container.dart';
import 'package:flutter/material.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        children: [
          AllExpensesAndIncomeHeader(),
          SizedBox(height: 16),
          AllExpensesBodyList(),
        ],
      ),
    );
  }
}
