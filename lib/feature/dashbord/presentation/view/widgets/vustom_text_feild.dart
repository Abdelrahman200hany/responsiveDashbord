
import 'package:dashboard/core/uitls/font_stylies.dart';
import 'package:flutter/material.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({super.key, required this.hint});
  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintStyle: AppStyles.styleRegular16,
        hintText: hint,
        fillColor: const Color(0xfffafafa),
        filled: true,

        border: buildBorder(),
         enabledBorder: buildBorder(),
        // focusedBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: const Color(0xfffafafa)),
      );
  }
}
