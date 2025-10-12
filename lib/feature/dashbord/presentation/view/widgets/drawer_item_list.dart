import 'package:dashboard/core/uitls/app_images.dart';
import 'package:dashboard/feature/dashbord/data/models/drawer_item_model.dart';
import 'package:dashboard/feature/dashbord/presentation/view/widgets/drawer_item.dart';
import 'package:flutter/material.dart';

class DrawerItemList extends StatefulWidget {
  const DrawerItemList({super.key});

  @override
  State<DrawerItemList> createState() => _DrawerItemListState();
}

class _DrawerItemListState extends State<DrawerItemList> {
  final List<DrawerItemModel> items = const [
    DrawerItemModel(title: 'Dashboard', picture: Assets.imagesDashboard),
    DrawerItemModel(
      title: 'My Transaction',
      picture: Assets.imagesMyTransctions,
    ),
    DrawerItemModel(title: 'Statistics', picture: Assets.imagesStatistics),
    DrawerItemModel(
      title: 'Wallet Account',
      picture: Assets.imagesWalletAccount,
    ),
    DrawerItemModel(
      title: 'My Investments',
      picture: Assets.imagesMyInvestments,
    ),
  ];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          if (activeIndex != index) {
            activeIndex = index;
          }

          setState(() {});
        },

        child: Padding(
          padding: EdgeInsets.only(bottom: 20),

          child: DrawerItem(item: items[index], isActive: activeIndex == index),
        ),
      ),
    );
  }
}
