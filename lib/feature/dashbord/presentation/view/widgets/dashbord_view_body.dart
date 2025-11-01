import 'package:dashboard/core/uitls/app_size_config.dart';
import 'package:dashboard/feature/dashbord/presentation/view/widgets/adabtive_layout.dart';
import 'package:dashboard/feature/dashbord/presentation/view/widgets/custom_drawer.dart';
import 'package:dashboard/feature/dashbord/presentation/view/widgets/desktop_dashbord_view.dart';
import 'package:dashboard/feature/dashbord/presentation/view/widgets/mobiel_layout.dart';
import 'package:dashboard/feature/dashbord/presentation/view/widgets/tablet_layout.dart';
import 'package:flutter/material.dart';

class DashBordViewBody extends StatelessWidget {
  const DashBordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    AppSizeConfig.initWidthandHight(context);

    return Scaffold(
      appBar: MediaQuery.sizeOf(context).width < AppSizeConfig.tablet
          ? AppBar(backgroundColor: Colors.white, elevation: 0)
          : null,

      drawer: MediaQuery.sizeOf(context).width < AppSizeConfig.tablet
          ? CustomDrawer()
          : null,

      body: AdabtiveLayout(
        mobilelayout: (context) => const MobileDashBordLayout(),
        tabletlayout: (context) => const TabletDashBordLayout(),
        desktoplayout: (context) => const DesktopDashBordView(),
      ),
    );
  }
}
