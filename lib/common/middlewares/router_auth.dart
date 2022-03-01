import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wechat/common/routes/app_route.dart';
import 'package:wechat/common/store/user_store.dart';
import 'package:wechat/common/utils/log.dart';

class RouteAuthMiddleware extends GetMiddleware {
  @override
  int? get priority => 0;

@override
  Future<GetNavConfig?> redirectDelegate(GetNavConfig route) async {
    bool isSignIn = await UserStore.isSignIn();
    log.i(isSignIn);
    if (!isSignIn) {
      Get.snackbar("ログイン失敗", "ユーザ名・パスワード不正");
      // return null;
      return GetNavConfig.fromRoute(AppRoute.signIn);
    }
    log.i(route);
    return route;
  }
}
