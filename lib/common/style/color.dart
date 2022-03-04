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
  static const Color primaryColor = Color.fromARGB(255, 26, 193, 25);

  /// Secondary Color
  static const Color secondaryColor = Color(0xFFDEE3FF);

  /// Border Color
  static const Color borderColor = Color(0xFFEEEEEE);

  static const Color unselectedItemColor = Color(0xFFA2A5B9);

  static const Color labelColor = Colors.black54;

  static const Color appBarBackgroundColor = Color(0xFFEEEEEE);

  /// tabBar 默认颜色 灰色
  static const Color tabBarElement = Color.fromARGB(255, 208, 208, 208);

  /// tabCellSeparator 单元格底部分隔条 颜色
  static const Color tabCellSeparator = Color.fromARGB(255, 230, 230, 231);

  /// 第二种控件-文本 浅蓝色
  static const Color secondaryElementText = Color.fromARGB(255, 41, 103, 255);
}