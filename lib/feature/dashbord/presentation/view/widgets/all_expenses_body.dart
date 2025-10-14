import 'package:dashboard/core/uitls/app_images.dart';
import 'package:dashboard/feature/dashbord/data/models/all_expenses_body_item_model.dart';
import 'package:dashboard/feature/dashbord/presentation/view/widgets/all_expenses_body_item.dart';
import 'package:flutter/material.dart';

class AllExpensesBodyList extends StatefulWidget {
  const AllExpensesBodyList({super.key});

  @override
  State<AllExpensesBodyList> createState() => _AllExpensesBodyState();
}

int selectedIndex = 0;

class _AllExpensesBodyState extends State<AllExpensesBodyList> {
  final List<AllExpensesBodyItemModel> items = const [
    AllExpensesBodyItemModel(image: Assets.imagesBalance, title: 'Balance'),
    AllExpensesBodyItemModel(image: Assets.imagesIncome, title: 'Income'),
    AllExpensesBodyItemModel(image: Assets.imagesExpenses, title: 'Expenses'),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;

        if (index == 1) {
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: GestureDetector(
                onTap: () {
                  if (selectedIndex != index) {
                    selectedIndex = index;
                  }

                  setState(() {});
                },

                child: AllExpensesBodyItem(
                  item: item,
                  isActive: selectedIndex == index,
                ),
              ),
            ),
          );
        } else {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                if (selectedIndex != index) {
                  selectedIndex = index;
                }

                setState(() {});
              },
              child: AllExpensesBodyItem(
                item: item,
                isActive: selectedIndex == index,
              ),
            ),
          );
        }
      }).toList(),
    );
  }
}
