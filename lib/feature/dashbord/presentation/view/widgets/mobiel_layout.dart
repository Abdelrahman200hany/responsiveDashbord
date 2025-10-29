import 'package:dashboard/feature/dashbord/presentation/view/widgets/all_expensess_and_quick_invioces_sec.dart';
import 'package:dashboard/feature/dashbord/presentation/view/widgets/income_sec.dart';
import 'package:dashboard/feature/dashbord/presentation/view/widgets/my_card_and_transaction_sec.dart';
import 'package:flutter/material.dart';

class MobileDashBordLayout extends StatelessWidget {
  const MobileDashBordLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(

      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            SizedBox(height: 12,),
          AllExpensesAndQuickInvoiceSection() , 
          SizedBox( height: 12,), 
          MYCardAndTransactionHistorySec() , 
          SizedBox( height: 12,),
          IncomeSec(isExpanded: false,),
          ],
        ),
      ),
    );
  }
}
