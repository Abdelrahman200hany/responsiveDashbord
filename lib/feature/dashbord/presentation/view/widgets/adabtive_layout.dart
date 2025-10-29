
import 'package:flutter/material.dart';

class AdabtiveLayout extends StatelessWidget {
  const AdabtiveLayout({super.key, required this.mobilelayout, required this.tabletlayout, required this.desktoplayout});

  final WidgetBuilder mobilelayout,tabletlayout,desktoplayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder:  (context, constraints) {
      if(constraints.maxWidth < 800){
        return mobilelayout(context);
      } else if(constraints.maxWidth < 1300){
        return tabletlayout(context);
      } else {
        return desktoplayout(context);
      }
    });
  }
}
