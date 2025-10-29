import 'package:dashboard/core/uitls/app_images.dart';
import 'package:dashboard/core/uitls/font_stylies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MYCardDetails extends StatelessWidget {
  const MYCardDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        // width: 420,
        // height: 215 - 27
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color:  Color(0xff4eb7f2) ,
          image: DecorationImage(image: AssetImage(Assets.imagesBalance2)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.only(
                top: 20,
                left: 31,
                right: 60 - 24,
              ),
              title: Text(
                'Name card',
                style: AppStyles.styleRegular16.copyWith(
                  color: const Color(0xffffffff),
                ),
              ),
              subtitle: Text('Syah Bandi', style: AppStyles.styleMedium20),
              trailing: SvgPicture.asset(Assets.imagesGallery),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsetsGeometry.only(right: 24, bottom: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '0918 8124 0042 8129',
                    style: AppStyles.styleSemiBold24.copyWith(
                      color: const Color(0xffffffff),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '12/20 - 124',
                    style: AppStyles.styleRegular16.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

