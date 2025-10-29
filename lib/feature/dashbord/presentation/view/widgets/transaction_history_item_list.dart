
import 'package:dashboard/core/uitls/font_stylies.dart';
import 'package:dashboard/feature/dashbord/data/models/transaction_history_item_model.dart';
import 'package:flutter/material.dart';

class TransactionHistoryItemList extends StatelessWidget {
  const TransactionHistoryItemList({super.key, required this.item});
  final TransactionHistoryItem item;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xfffafafa),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(12),
      ),
      child: ListTile(
        title: Text(item.title, style: AppStyles.styleSemiBold16),
        subtitle: Text(
          item.data,
          style: AppStyles.styleRegular16.copyWith(color:const Color(0xffaaaaaa)),
        ),
        trailing: Text(
          item.price,
          style: AppStyles.styleSemiBold20.copyWith(
            color: item.isCashWithdrawal ? Colors.red : Colors.green,
          ),
        ),
      ),
    );
  }
}