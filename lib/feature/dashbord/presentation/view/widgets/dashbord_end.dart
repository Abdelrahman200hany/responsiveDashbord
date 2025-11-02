
import 'package:dashboard/core/uitls/app_images.dart';
import 'package:dashboard/core/uitls/font_stylies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
              title: Text('Setting system', style: AppStyles.styleRegular16(context)),
            ),
          ),
      
          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: ListTile(
              leading: SvgPicture.asset(Assets.imagesLogout),
              title: Text('Logout account', style: AppStyles.styleRegular16(context)),
            ),
          ),
        ],
      ),
    );
  }
}
