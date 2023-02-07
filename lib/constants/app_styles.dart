///   Created by: Bahromjon Po'lat.
///   Created date: 8/24/22 6:05 PM

// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

class AppTextStyle {
  static const String montserrat = 'Montserrat';

  static TextStyle _getTextStyle(
    double fontSize,
    FontWeight fontWeight,
    Color? color, {
    String? fontFamily,
  }) {
    return TextStyle(
      fontSize: fontSize,
      fontFamily: fontFamily,
      color: color ?? Colors.black,
      fontWeight: fontWeight,
    );
  }

  // regular style

  static TextStyle regular({
    double size = 16.0,
    Color? color,
    String? fontFamily,
  }) {
    return _getTextStyle(
      size,
      FontWeight.w400,
      color,
      fontFamily: fontFamily,
    );
  }

// payment text style

  static TextStyle light({
    double size = 14.0,
    Color? color,
    String? fontFamily,
  }) {
    return _getTextStyle(
      size,
      FontWeight.w300,
      color,
      fontFamily: fontFamily,
    );
  }

// bold text style

  static TextStyle bold({
    double size = 30.0,
    Color? color,
    String? fontFamily,
  }) {
    return _getTextStyle(
      size,
      FontWeight.bold,
      color,
      fontFamily: fontFamily,
    );
  }

// extra bold text style

  static TextStyle extraBold({
    double size = 14.0,
    Color? color,
    String? fontFamily,
  }) {
    return _getTextStyle(size, FontWeight.w800, color);
  }

// semi bold text style

  static TextStyle semiBold({
    double size = 14.0,
    Color? color,
    String? fontFamily,
  }) {
    return _getTextStyle(
      size,
      FontWeight.w600,
      color,
      fontFamily: fontFamily,
    );
  }

// medium text style

  static TextStyle medium({
    double size = 16.0,
    Color? color,
    String? fontFamily,
  }) {
    return _getTextStyle(
      size,
      FontWeight.w500,
      color,
      fontFamily: fontFamily,
    );
  }

  static TextStyle getButtonStyle({double size = 14.0}) => TextStyle(
        letterSpacing: 0.8,
        color: Colors.white,
        fontWeight: FontWeight.w600,
        fontSize: size,
      );

//title
  static TextStyle title({
    double size = 16.0,
    Color? color,
    String? fontFamily,
  }) {
    return _getTextStyle(
      size,
      FontWeight.w500,
      color,
      fontFamily: fontFamily,
    );
  }

//subtitle
  static TextStyle subtitle({
    double size = 14.0,
    Color? color,
    String? fontFamily,
  }) {
    return _getTextStyle(
      size,
      FontWeight.w500,
      color,
      fontFamily: fontFamily,
    );
  }

  //pin button
  static TextStyle pinStyle({
    double size = 14.0,
    Color? color,
  }) {
    return _getTextStyle(
      size,
      FontWeight.w300,
      color,
    );
  }

  //PrimaryButton
  static TextStyle primaryB({
    double size = 18.0,
    Color? color,
    String? fontFamily,
  }) {
    return _getTextStyle(
      size,
      FontWeight.w400,
      color,
      fontFamily: fontFamily,
    );
  }
}
