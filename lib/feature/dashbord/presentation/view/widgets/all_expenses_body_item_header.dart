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
        Flexible(
          
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
            
                decoration: BoxDecoration(
                  color: iconbackgoundcolor ?? const Color(0xfffefefe),
                  borderRadius: BorderRadius.circular(32),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    image,
                    colorFilter: ColorFilter.mode(
                      imageColor ?? const Color(0xff4eb7f2), BlendMode.srcIn
                     
                    ),
                  ),
                ),
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
