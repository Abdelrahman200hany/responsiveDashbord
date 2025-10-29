import 'package:dashboard/feature/dashbord/presentation/view/widgets/custom_drawer.dart';
import 'package:dashboard/feature/dashbord/presentation/view/widgets/mobiel_layout.dart';
import 'package:flutter/material.dart';

class TabletDashBordLayout extends StatelessWidget {
  const TabletDashBordLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(child: CustomDrawer()),
      SizedBox(width: 12,),
      Expanded(flex : 3 , child:MobileDashBordLayout() )
    ],);
  }
}