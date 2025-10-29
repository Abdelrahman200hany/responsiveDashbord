import 'package:dashboard/feature/dashbord/presentation/view/widgets/all_Expenses.dart';
import 'package:dashboard/feature/dashbord/presentation/view/widgets/quick_invoice.dart';
import 'package:flutter/material.dart';

class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [AllExpenses(), SizedBox(height: 15), QuickInvoice()],
    );
  }
}
