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
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              if (selectedIndex != 0) {
                selectedIndex = 0;
              }
              setState(() {});
            },
            child: AllExpensesBodyItem(
              item: items[0],
              isActive: selectedIndex == 0,
            ),
          ),
        ),
        SizedBox(width: 8),
        Expanded(
          child: GestureDetector(
            onTap: () {
              if (selectedIndex != 1) {
                selectedIndex = 1;
              }
              setState(() {});
            },
            child: AllExpensesBodyItem(
              item: items[1],
              isActive: selectedIndex == 1,
            ),
          ),
        ),
        SizedBox(width: 8),
        Expanded(
          child: GestureDetector(
            onTap: () {
              if (selectedIndex != 2) {
                selectedIndex = 2;
              }
              setState(() {});
            },
            child: AllExpensesBodyItem(
              item: items[2],
              isActive: selectedIndex == 2,
            ),
          ),
        ),
      ],
    );

    //  Row(
    //   children: items.asMap().entries.map((e) {
    //     int index = e.key;
    //     var item = e.value;

    //     return Expanded(
    //       child: GestureDetector(
    //         onTap: () {
    //           if (selectedIndex != index) {
    //             selectedIndex = index;
    //           }
    //           setState(() {});
    //         },
    //         child: Padding(
    //           padding: index == 1
    //               ? EdgeInsets.symmetric(horizontal: 12)
    //               : EdgeInsets.zero,
    //           child: AllExpensesBodyItem(
    //             item: item,
    //             isActive: selectedIndex == index,
    //           ),
    //         ),
    //       ),
    //     );
    //   }).toList(),
    // );

    //  Row(
    //   children: items.asMap().entries.map((e) {
    //     int index = e.key;
    //     var item = e.value;

    //     if (index == 1) {
    //       return Expanded(
    //         child: Padding(
    //           padding: const EdgeInsets.symmetric(horizontal: 8.0),
    //           child: GestureDetector(
    //             onTap: () {
    //               if (selectedIndex != index) {
    //                 selectedIndex = index;
    //               }

    //               setState(() {});
    //             },

    //             child: AllExpensesBodyItem(
    //               item: item,
    //               isActive: selectedIndex == index,
    //             ),
    //           ),
    //         ),
    //       );
    //     } else {
    //       return Expanded(
    //         child: GestureDetector(
    //           onTap: () {
    //             if (selectedIndex != index) {
    //               selectedIndex = index;
    //             }

    //             setState(() {});
    //           },
    //           child: AllExpensesBodyItem(
    //             item: item,
    //             isActive: selectedIndex == index,
    //           ),
    //         ),
    //       );
    //     }
    //   }).toList(),
    // );
  }
}
