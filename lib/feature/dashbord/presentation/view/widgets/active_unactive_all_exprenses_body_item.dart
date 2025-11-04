import 'package:dashboard/core/uitls/font_stylies.dart';
import 'package:dashboard/feature/dashbord/data/models/all_expenses_body_item_model.dart';
import 'package:dashboard/feature/dashbord/presentation/view/widgets/all_expenses_body_item_header.dart';
import 'package:flutter/material.dart';

class UnActiveAllExpensesBodyItem extends StatelessWidget {
  const UnActiveAllExpensesBodyItem({super.key, required this.item});

  final AllExpensesBodyItemModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        border: Border.all(color: const Color(0xfff1f1f1), width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesBodyItemHeader(image: item.image),
          SizedBox(height: 34),

          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              item.title,
              style: AppStyles.styleSemiBold16(context).copyWith(
                color: const Color(0xff064061),
              ),
            ),
          ),
          SizedBox(height: 8),
          FittedBox(
               fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              'April 2022',
              style: AppStyles.styleRegular14(context).copyWith(color: Color(0xffaaaaaa)),
            ),
          ),
          SizedBox(height: 10),
          FittedBox(
               fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              r'$20,129',
              style: AppStyles.styleSemiBold24(context).copyWith(
                color: const Color(0xff4eb7f2),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ActiveAllExpensesBodyItem extends StatelessWidget {
  const ActiveAllExpensesBodyItem({super.key, required this.item});

  final AllExpensesBodyItemModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xff4eb7f2),
        border: Border.all(color: const Color(0xfff1f1f1), width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesBodyItemHeader(
            iconbackgoundcolor: Colors.white.withValues(alpha: 0.1),
            imageColor: Colors.white,
            image: item.image,
          ),
          SizedBox(height: 34),

          FittedBox(
               fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              item.title,
              style: AppStyles.styleSemiBold16(context).copyWith(color: Colors.white),
            ),
          ),
          SizedBox(height: 8),
          FittedBox(
               fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              'April 2022',
              style: AppStyles.styleRegular14(context).copyWith(
                color: const Color(0xfffafafa),
              ),
            ),
          ),
          SizedBox(height: 10),
          FittedBox(
               fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              r'$20,129',
              style: AppStyles.styleSemiBold24(context).copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
