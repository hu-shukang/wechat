import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wechat/common/routes/app_route.dart';

class RootPage extends StatelessWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetRouterOutlet.builder(builder: (context, delegate, currentRoute) {
      final title = currentRoute?.location;
      return Scaffold(
        appBar: AppBar(
          title: Text(title ?? 'default title'),
        ),
        body: GetRouterOutlet(
          initialRoute: AppRoute.signIn,
        ),
      );
    });
  }
}
