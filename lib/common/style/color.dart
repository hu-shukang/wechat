import 'package:flutter/material.dart';

abstract class AppColor {
  AppColor._();

  /// Main Background Color
  static const Color scaffoldBackground = Color(0xFFFFFFFF);

  /// Primary Text Color
  static const Color primaryText = Color(0xFF333333);

  /// Secondary Text Color
  static const Color secondaryText = Color(0xFFB6B6B6);

  /// Primary Color
  static const Color primaryColor = Color.fromARGB(255, 7, 193, 96);

  /// Secondary Color
  static const Color secondaryColor = Color(0xFFDEE3FF);

  /// Border Color
  static const Color borderColor = Color(0xFFDEE3FF);

  static const Color unselectedItemColor = Color(0xFFA2A5B9);

  static const Color labelColor = Colors.black54;
}