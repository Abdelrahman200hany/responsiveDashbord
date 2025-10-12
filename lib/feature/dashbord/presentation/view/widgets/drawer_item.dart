import 'package:dashboard/core/uitls/font_stylies.dart';
import 'package:dashboard/feature/dashbord/data/models/drawer_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.item, required this.isActive});
  final DrawerItemModel item;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(item: item)
        : UnActiveDrawerItem(item: item);
  }
}

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({super.key, required this.item});

  final DrawerItemModel item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(item.picture),
      title: Text(item.title, style: AppStyles.styleBold16),
      trailing: Container(width: 3.27, color: const Color(0xff4Eb7f2)),
    );
  }
}

class UnActiveDrawerItem extends StatelessWidget {
  const UnActiveDrawerItem({super.key, required this.item});

  final DrawerItemModel item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(item.picture),
      title: Text(item.title, style: AppStyles.styleRegular16),
    );
  }
}
