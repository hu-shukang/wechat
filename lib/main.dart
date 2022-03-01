import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wechat/common/routes/app_page.dart';
import 'package:wechat/common/routes/app_route.dart';
import 'package:wechat/common/style/theme.dart';
import 'package:wechat/global.dart';

void main() async {
  await Global.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp.router(
      title: 'WeChat',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      // initialRoute: AppRoute.signIn,
      getPages: AppPage.pages,
    );
  }
}
