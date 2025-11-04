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
          color: Color(0xff4eb7f2),
          image: DecorationImage(image: AssetImage(Assets.imagesBalance2)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.only(
                top: 8,
                left: 31,
                right: 60 - 24,
              ),
              title: Text(
                'Name card',
                style: AppStyles.styleRegular16(context).copyWith(
                  color: const Color(0xffffffff),
                ),
              ),
              subtitle: Text('Syah Bandi', style: AppStyles.styleMedium20(context)),
              trailing: SvgPicture.asset(Assets.imagesGallery),
            ),
        Expanded(flex: 3, child: SizedBox()),
            Padding(
              padding: EdgeInsetsGeometry.only(right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FittedBox(
                    alignment: Alignment.centerRight,
                    fit: BoxFit.scaleDown,
                    child: Text(
                      '0918 8124 0042 8129',
                      style: AppStyles.styleSemiBold24(context).copyWith(
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                  SizedBox(height: 6),
                  FittedBox(
                    alignment: Alignment.centerRight,

                    fit: BoxFit.scaleDown,
                    child: Text(
                      '12/20 - 124',
                      style: AppStyles.styleRegular16(context).copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(child: SizedBox(height: 8)),
          ],
        ),
      ),
    );
  }
}
