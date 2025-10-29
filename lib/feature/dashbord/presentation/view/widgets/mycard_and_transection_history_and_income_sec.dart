import 'package:dashboard/feature/dashbord/presentation/view/widgets/income_sec.dart';
import 'package:dashboard/feature/dashbord/presentation/view/widgets/my_card_and_transaction_sec.dart';
import 'package:flutter/material.dart';

class MyCardAndTransectionHitoryAndIncomeSec extends StatelessWidget {
  const MyCardAndTransectionHitoryAndIncomeSec({super.key});

  @override
  Widget build(BuildContext context) {
    return Column( 

      children: [MYCardAndTransactionHistorySec() , SizedBox(height: 16,),Expanded(child: IncomeSec(isExpanded: true,))],
    );
  }
}