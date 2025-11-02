
import 'package:dashboard/core/uitls/font_stylies.dart';
import 'package:dashboard/feature/dashbord/presentation/view/widgets/transaction_history_list.dart';
import 'package:dashboard/feature/dashbord/presentation/view/widgets/transion_hitory_header.dart';
import 'package:flutter/material.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransactionHistoryHeader(),
        SizedBox(height: 20),
        Text('13 April 2022', style: AppStyles.styleMedium16(context)),
        SizedBox(height: 10),
        TransactionHistoryList(), 
      ],
    );
  }
}



