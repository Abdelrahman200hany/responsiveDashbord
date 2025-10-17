
import 'package:dashboard/core/uitls/font_stylies.dart';
import 'package:flutter/material.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Quick Invoice', style: AppStyles.styleSemiBold20),
        Spacer(),
        Container(
          height: 48,
          width: 48,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32),
            color: const Color(0xfffafafa),
          ),
          child: Center(
      
            child: Icon(Icons.add, color: const Color(0xff4eb7f2)),
          ),
        ),
      ],
    );
  }
}
