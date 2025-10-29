import 'package:flutter/material.dart';

class DoitsItem extends StatelessWidget {
  const DoitsItem({super.key, required this.currentIndex});
  final bool currentIndex;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: 8,
      width: currentIndex? 32 : 8,

      duration: Duration(milliseconds: 4),
      decoration: BoxDecoration(
        color: currentIndex? const Color(0xff4Eb7f2) : const Color(0xffebebeb),
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
