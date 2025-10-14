
import 'package:dashboard/core/uitls/font_stylies.dart';
import 'package:dashboard/feature/dashbord/presentation/view/widgets/custom_container.dart';
import 'package:flutter/material.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(' All Expenses ', style: AppStyles.styleSemiBold20),
        Spacer(),
        CustomContainer(
          child: Row(
            children: [
              Text('Monthly', style: AppStyles.styleMedium16),
              SizedBox(width: 18),
              Transform.rotate(
                angle: -1.5708,
                
                child: Icon(Icons.arrow_back_ios_new_rounded)),
            ],
          ),
        ),
      ],
    );
  }
}
