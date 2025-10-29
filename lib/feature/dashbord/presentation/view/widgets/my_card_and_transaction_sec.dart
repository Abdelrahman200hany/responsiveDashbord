import 'package:dashboard/feature/dashbord/presentation/view/widgets/custom_container.dart';
import 'package:dashboard/feature/dashbord/presentation/view/widgets/my_card_balance.dart';
import 'package:dashboard/feature/dashbord/presentation/view/widgets/transtion_history.dart';
import 'package:flutter/material.dart';

class MYCardAndTransactionHistorySec extends StatelessWidget {
  const MYCardAndTransactionHistorySec({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [Mycard(), Divider(height: 40), TransactionHistory()],
      ),
    );
  }
}
