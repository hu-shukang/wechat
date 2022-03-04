import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wechat/common/style/color.dart';

class AppTheme {
  static const horizontalMargin = 16.0;
  static const radius = 10.0;

  static ThemeData light = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColor.scaffoldBackground,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    primaryColor: AppColor.primaryColor,
    colorScheme: ColorScheme.fromSwatch().copyWith(
      secondary: AppColor.primaryColor,
    ),
    appBarTheme: const AppBarTheme(
      elevation: 0,
      centerTitle: true,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
      backgroundColor: AppColor.appBarBackgroundColor,
      iconTheme: IconThemeData(
        color: AppColor.primaryText,
      ),
      titleTextStyle: TextStyle(
        color: AppColor.primaryText,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColor.scaffoldBackground,
      unselectedLabelStyle: TextStyle(fontSize: 12),
      selectedLabelStyle: TextStyle(fontSize: 12),
      unselectedItemColor: AppColor.unselectedItemColor,
      selectedItemColor: AppColor.primaryColor,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: true,
      showUnselectedLabels: true,
    ),
    tabBarTheme: const TabBarTheme(
      indicatorSize: TabBarIndicatorSize.label,
      labelColor: AppColor.primaryColor,
      unselectedLabelColor: AppColor.secondaryText,
    ),
  );
}
