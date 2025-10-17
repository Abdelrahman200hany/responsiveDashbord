
import 'package:dashboard/feature/dashbord/presentation/view/widgets/custom_buttom.dart';
import 'package:dashboard/feature/dashbord/presentation/view/widgets/titile_text_feild.dart';
import 'package:flutter/material.dart';

class QuickVoiceForm extends StatelessWidget {
  const QuickVoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextFeild(
                text: 'Customer name',
                hint: 'Type customer name',
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextFeild(
                text: 'Customer Email',
                hint: 'Type customer email',
              ),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: TitleTextFeild(
                text: 'Item name',
                hint: 'Type customer name',
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextFeild(text: 'Item mount', hint: 'USD'),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: CustomButtom(
                text: 'Add more details',
                backgroundColor: Colors.transparent,
                textColor: const Color(0xff4eb7f2),
              ),
            ),
            SizedBox(width: 24),
            Expanded(child: CustomButtom(text: 'Send Money')),
          ],
        ),
      ],
    );
  }
}