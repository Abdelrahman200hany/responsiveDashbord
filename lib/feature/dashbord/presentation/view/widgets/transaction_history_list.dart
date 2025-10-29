import 'package:dashboard/feature/dashbord/data/models/transaction_history_item_model.dart';
import 'package:dashboard/feature/dashbord/presentation/view/widgets/transaction_history_item_list.dart';
import 'package:flutter/material.dart';

class TransactionHistoryList extends StatelessWidget {
  const TransactionHistoryList({super.key});
  static const List<TransactionHistoryItem> item = [
    TransactionHistoryItem(
      title: 'Cash Withdrawal',
      data: '13 Apr, 2022 ',
      price: r'$20,129',
      isCashWithdrawal: true,
    ),
    TransactionHistoryItem(
      title: 'Landing Page project',
      data: '13 Apr, 2022 ',
      price: r'$2,000',
      isCashWithdrawal: false,
    ),
    TransactionHistoryItem(
      title: 'Juni Mobile App project',
      data: '13 Apr, 2022 ',
      price: r'$20,129',
      isCashWithdrawal: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: item.length,

      itemBuilder: (context, index) => Padding(
        padding: EdgeInsetsGeometry.only(bottom: 12),
        child: TransactionHistoryItemList(item: item[index]),
      ),
    );
  }
}
