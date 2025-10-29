import 'package:dashboard/feature/dashbord/data/models/income_data_model.dart';
import 'package:dashboard/feature/dashbord/presentation/view/widgets/income_data_item.dart';
import 'package:flutter/material.dart';

class IncomeDataList extends StatelessWidget {
  const IncomeDataList({super.key});
  final List<IncomeDataModel> items = const [
    IncomeDataModel(
      data: 'Direct',
      presentage: '55%',
      color: Color(0xff4eb7f2),
    ),
    IncomeDataModel(
      data: 'Referral',
      presentage: '25%',
      color: Color(0xfff2a154),
    ),
    IncomeDataModel(
      data: 'Social',
      presentage: '15%',
      color: Color(0xff845ef7),
    ),
    IncomeDataModel(data: 'Others', presentage: '5%', color: Color(0xff2ed573)),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 4,

      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 6),
          child: IncomeDataItem(item: items[index]),
        );
      },
    );
  }
}
