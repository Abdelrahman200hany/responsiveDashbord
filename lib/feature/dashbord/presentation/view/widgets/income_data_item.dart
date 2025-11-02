import 'package:dashboard/core/uitls/font_stylies.dart';
import 'package:dashboard/feature/dashbord/data/models/income_data_model.dart';
import 'package:flutter/material.dart';

class IncomeDataItem extends StatelessWidget {
  const IncomeDataItem({super.key, required this.item});
  final IncomeDataModel item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: BoxDecoration(color: item.color),
      ),

      title: FittedBox(
        alignment: Alignment.centerLeft,
        
        fit: BoxFit.scaleDown,
        child: Text(item.data, style: AppStyles.styleRegular16(context))),
      trailing: Text(item.presentage, style: AppStyles.styleMedium16(context)),
    );
  }
}
