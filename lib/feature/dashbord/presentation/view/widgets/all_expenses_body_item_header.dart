import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesBodyItemHeader extends StatelessWidget {
  const AllExpensesBodyItemHeader({
    super.key,
    this.iconbackgoundcolor,
    required this.image,
    this.imageColor,
  });
  final Color? iconbackgoundcolor, imageColor;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: iconbackgoundcolor ?? const Color(0xfffefefe),
            borderRadius: BorderRadius.circular(32),
          ),
          child: Padding(
            padding: EdgeInsetsGeometry.all(14),
            child: SvgPicture.asset(
              image,
              colorFilter: ColorFilter.mode(
                imageColor ?? const Color(0xff4eb7f2), BlendMode.srcIn
               
              ),
            ),
          ),
        ),
        Spacer(),
        Transform.rotate(
          angle: -1.5708 * 2,
          child: Icon(Icons.arrow_back_ios_rounded),
        ),
      ],
    );
  }
}
