
import 'package:dashboard/core/uitls/font_stylies.dart';
import 'package:dashboard/feature/dashbord/data/models/income_data_model.dart';
import 'package:flutter/material.dart';

class IncomeDataItem extends StatelessWidget {
  const IncomeDataItem({super.key, required this.item});
  final IncomeDataModel item;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(color: item.color),
        ),
        SizedBox(width: 4),

        Text(item.data, style: AppStyles.styleRegular16),
        Spacer(),
        Text(item.presentage, style: AppStyles.styleMedium16),
      ],
    );
  }
}
