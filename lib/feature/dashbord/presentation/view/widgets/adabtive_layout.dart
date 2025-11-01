
import 'package:dashboard/core/uitls/app_size_config.dart';
import 'package:flutter/material.dart';

class AdabtiveLayout extends StatelessWidget {
  const AdabtiveLayout({super.key, required this.mobilelayout, required this.tabletlayout, required this.desktoplayout});

  final WidgetBuilder mobilelayout,tabletlayout,desktoplayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder:  (context, constraints) {
      if(constraints.maxWidth < AppSizeConfig.tablet){
        return mobilelayout(context);
      } else if(constraints.maxWidth < AppSizeConfig.desktop){
        return tabletlayout(context);
      } else {
        return desktoplayout(context);
      }
    });
  }
}
