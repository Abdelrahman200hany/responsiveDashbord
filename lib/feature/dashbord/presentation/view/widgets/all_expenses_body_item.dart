import 'package:dashboard/feature/dashbord/data/models/all_expenses_body_item_model.dart';
import 'package:dashboard/feature/dashbord/presentation/view/widgets/active_unactive_all_exprenses_body_item.dart';
import 'package:flutter/material.dart';

class AllExpensesBodyItem extends StatelessWidget {
  const AllExpensesBodyItem({
    super.key,
    required this.item,
    required this.isActive,
  });

  final AllExpensesBodyItemModel item;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveAllExpensesBodyItem(item: item)
        : UnActiveAllExpensesBodyItem(item: item);
  }
}


