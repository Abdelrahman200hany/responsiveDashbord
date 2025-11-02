
import 'package:dashboard/core/uitls/font_stylies.dart';
import 'package:dashboard/feature/dashbord/presentation/view/widgets/vustom_text_feild.dart';
import 'package:flutter/material.dart';

class TitleTextFeild extends StatelessWidget {
  const TitleTextFeild({super.key, required this.text, required this.hint});
  final String text, hint;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text, style: AppStyles.styleMedium16(context)),
        SizedBox(height: 12),
        CustomTextFeild(hint: hint),
      ],
    );
  }
}