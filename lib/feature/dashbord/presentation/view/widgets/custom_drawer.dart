import 'package:dashboard/core/uitls/app_images.dart';
import 'package:dashboard/feature/dashbord/presentation/view/widgets/dashbord_end.dart';
import 'package:dashboard/feature/dashbord/presentation/view/widgets/drawer_item_list.dart';
import 'package:dashboard/feature/dashbord/presentation/view/widgets/user_info.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xffffffff),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: UserInfo(
                imageUrl: Assets.imagesAvatar3,
                title: 'abdelrahman hany ',
                subtitle: 'flutter dev ',
              ),
            ),
          ),
          DrawerItemList(),
          DrawerEnd(),
        ],
      ),
    );
  }
}
