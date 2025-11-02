import 'package:dashboard/core/uitls/font_stylies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
  });

  final String imageUrl, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation:0.2,
      child: ListTile(
        leading: SvgPicture.asset(imageUrl),
        title: Text(title, style: AppStyles.styleSemiBold16(context)),
        subtitle: Text(subtitle, style: AppStyles.styleRegular14(context)),
      ),
    );
  }
}
