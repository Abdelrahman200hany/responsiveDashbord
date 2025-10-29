import 'package:dashboard/feature/dashbord/presentation/view/widgets/all_expense_header.dart';
import 'package:dashboard/feature/dashbord/presentation/view/widgets/custom_container.dart';
import 'package:dashboard/feature/dashbord/presentation/view/widgets/income_cart.dart';
import 'package:dashboard/feature/dashbord/presentation/view/widgets/income_data_item_list.dart';
import 'package:flutter/material.dart';

class IncomeSec extends StatelessWidget {
  const IncomeSec({super.key, required this.isExpanded});
final bool isExpanded ;
  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        children: [
          AllExpensesAndIncomeHeader(headerName: 'Income'),
          SizedBox(height: 8),
        isExpanded? Expanded(child: IncomeStatics()): IncomeStatics(),
        ],
      ),
    );
  }
}

class IncomeStatics extends StatelessWidget {
  const IncomeStatics({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(child: IncomeCart()),
        SizedBox(width: 10),
        Expanded(child: IncomeDataList()),
      ],
    );
  }
}
