import 'package:dashboard/feature/dashbord/presentation/view/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class DashBordViewBody extends StatelessWidget {
  const DashBordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [CustomDrawer()]);
  }
}

