import 'package:flutter/material.dart';

class AppSizeConfig {
  static const tablet = 800;
  static const desktop = 1300;

  static late double width, height;

  static initWidthandHight(BuildContext context) {
    width = MediaQuery.sizeOf(context).width;
    height = MediaQuery.sizeOf(context).height;
  }
}
