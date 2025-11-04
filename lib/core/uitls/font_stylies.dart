
import 'package:dashboard/core/uitls/app_size_config.dart';
import 'package:flutter/material.dart';

abstract class AppStyles {
  static TextStyle styleRegular16(context) {
    return TextStyle(
      color: const Color(0xFF064060),
      fontSize: getResponsiveFontSize(context, 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleBold16(context) {
    return TextStyle(
      color: const Color(0xFF4EB7F2),
      fontSize: getResponsiveFontSize(context, 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleMedium16(context) {
    return TextStyle(
      color: const Color(0xFF064061),
      fontSize: getResponsiveFontSize(context, 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleMedium20(context) {
    return TextStyle(
      color: const Color(0xFFFFFFFF),
      fontSize: getResponsiveFontSize(context, 20),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleSemiBold16(context) {
    return TextStyle(
      color: const Color(0xFF064061),
      fontSize: getResponsiveFontSize(context, 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold20(context) {
    return TextStyle(
      color: const Color(0xFF064061),
      fontSize: getResponsiveFontSize(context, 20),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleRegular12(context) {
    return TextStyle(
      color: const Color(0xFFAAAAAA),
      fontSize: getResponsiveFontSize(context, 12),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleSemiBold24(context) {
    return TextStyle(
      color: const Color(0xFF4EB7F2),
      fontSize: getResponsiveFontSize(context, 24),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleRegular14(context) {
    return TextStyle(
      color: const Color(0xFFAAAAAA),
      fontSize: getResponsiveFontSize(context, 14),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleSemiBold18(context) {
    return TextStyle(
      color: const Color(0xFFFFFFFF),
      fontSize: getResponsiveFontSize(context, 18),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }
}

double getResponsiveFontSize(BuildContext context, double fontSize) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = responsiveFontSize * 0.8;
  double upperLimit = responsiveFontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {

// if i want to don't use context or meadiaquery 
// var platformDispatcher =PlatformDispatcher.instance;
// var physicalWidth = platformDispatcher.views.first.physicalSize.width;
// var  devicePixelRatio = platformDispatcher.views.first.devicePixelRatio;
// var width = physicalWidth / devicePixelRatio;



  double width = MediaQuery.of(context).size.width;

  if (width < AppSizeConfig.tablet) {
    return width / 600;
  } else if (width < AppSizeConfig.desktop) {
    return width / 1050;
  } else {
    return width / 1900;
  }
}

//  static const TextStyle styleRegular16 = TextStyle(
//     color: Color(0xFF064060),
//     fontSize: 16,
//     fontFamily: 'Montserrat',
//     fontWeight: FontWeight.w400,
//   );
//   static const TextStyle styleBold16 = TextStyle(
//     color: Color(0xFF4EB7F2),
//     fontSize: 16,
//     fontFamily: 'Montserrat',
//     fontWeight: FontWeight.w700,
//   );
//   static const TextStyle styleMedium16 = TextStyle(
//     color: Color(0xFF064061),
//     fontSize: 16,
//     fontFamily: 'Montserrat',
//     fontWeight: FontWeight.w500,
//   );
//   static const TextStyle styleMedium20 = TextStyle(
//     color: Color(0xFFFFFFFF),
//     fontSize: 20,
//     fontFamily: 'Montserrat',
//     fontWeight: FontWeight.w500,
//   );
//   static const TextStyle styleSemiBold16 = TextStyle(
//     color: Color(0xFF064061),
//     fontSize: 16,
//     fontFamily: 'Montserrat',
//     fontWeight: FontWeight.w600,
//   );

//   static const TextStyle styleSemiBold20 = TextStyle(
//     color: Color(0xFF064061),
//     fontSize: 20,
//     fontFamily: 'Montserrat',
//     fontWeight: FontWeight.w600,
//   );
//   static const TextStyle styleRegular12 = TextStyle(
//     color: Color(0xFFAAAAAA),
//     fontSize: 12,
//     fontFamily: 'Montserrat',
//     fontWeight: FontWeight.w400,
//   );

//   static const TextStyle styleSemiBold24 = TextStyle(
//     color: Color(0xFF4EB7F2),
//     fontSize: 24,
//     fontFamily: 'Montserrat',
//     fontWeight: FontWeight.w600,
//   );

//   static const TextStyle styleRegular14 = TextStyle(
//     color: Color(0xFFAAAAAA),
//     fontSize: 14,
//     fontFamily: 'Montserrat',
//     fontWeight: FontWeight.w400,
//   );

//   static const TextStyle styleSemiBold18 = TextStyle(
//     color: Color(0xFFFFFFFF),
//     fontSize: 18,
//     fontFamily: 'Montserrat',
//     fontWeight: FontWeight.w600,
//   );
