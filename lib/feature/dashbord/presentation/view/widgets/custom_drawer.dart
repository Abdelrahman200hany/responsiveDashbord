import 'package:dashboard/core/uitls/app_images.dart';
import 'package:dashboard/core/uitls/font_stylies.dart';
import 'package:dashboard/feature/dashbord/presentation/view/widgets/drawer_item_list.dart';
import 'package:dashboard/feature/dashbord/presentation/view/widgets/user_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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

class DrawerEnd extends StatelessWidget {
  const DrawerEnd({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      hasScrollBody: false,
      child: Column(
        children: [
          Expanded(child: SizedBox(height: 20)),
          // Spacer(),
      
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: ListTile(
              leading: SvgPicture.asset(Assets.imagesSettings),
              title: Text('Setting system', style: AppStyles.styleRegular16),
            ),
          ),
      
          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: ListTile(
              leading: SvgPicture.asset(Assets.imagesLogout),
              title: Text('Logout account', style: AppStyles.styleRegular16),
            ),
          ),
        ],
      ),
    );
  }
}
