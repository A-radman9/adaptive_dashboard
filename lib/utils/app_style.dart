import 'package:adaptive_dashboard/utils/size_config.dart';
import 'package:flutter/material.dart';

abstract class AppStyle{

  static TextStyle styleRegular16(context)
  {
    return TextStyle(
      color: Color(0xFF064060),
      fontSize: getResponsiveFontSize(context: context, fontsize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }
  static TextStyle styleRegular14(context) {
    return TextStyle(
      color: Color(0xFFAAAAAA),
      fontSize: getResponsiveFontSize(context: context, fontsize: 14),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }
  static TextStyle styleRegular12(context) {
    return TextStyle(
      color: Color(0xFFAAAAAA),
      fontSize: getResponsiveFontSize(context: context, fontsize: 12),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }
  static TextStyle styleMedium16(context) {
    return TextStyle(
      color: Color(0xFF064061),
      fontSize: getResponsiveFontSize(context: context, fontsize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }
  static TextStyle styleMedium20(context) {
    return TextStyle(
      color: Color(0xFF064061),
      fontSize: getResponsiveFontSize(context: context, fontsize: 20),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }
  static TextStyle styleSemiBold16(context) {
    return TextStyle(
      color: Color(0xFF064061),
      fontSize: getResponsiveFontSize(context: context, fontsize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }
  static TextStyle styleSemiBold18(context) {
    return TextStyle(
      color: Colors.white,
      fontSize: getResponsiveFontSize(context: context, fontsize: 18),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }
  static TextStyle styleSemiBold20(context) {
    return TextStyle(
      color: Color(0xFF064061),
      fontSize: getResponsiveFontSize(context: context, fontsize: 20),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }
  static TextStyle styleSemiBold24(context) {
    return TextStyle(
      color: Color(0xFF4EB7F2),
      fontSize: getResponsiveFontSize(context: context, fontsize: 24),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }
  static TextStyle styleBold16(context) {
    return TextStyle(
      color: Color(0xFF4EB7F2),
      fontSize: getResponsiveFontSize(context: context, fontsize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
    );
  }

  static double getResponsiveFontSize({required BuildContext context, required double fontsize})
  {
    double scaleFactor = getScaleFactor(context: context);
    double responsiveFontSize = fontsize * scaleFactor;

    double lowerLimit = fontsize * .8;
    double upperLimit = fontsize * 1.2;
    return responsiveFontSize.clamp(lowerLimit, upperLimit);
  }

  static double getScaleFactor({required BuildContext context})
  {
    double width = MediaQuery.sizeOf(context).width;
    if(width < SizeConfig.mobile)
      return width / 550;
    else if(width < SizeConfig.tablet)
      return width / 1000;
    else
      return width / 1920;
  }
}