import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wechat/common/routes/app_route.dart';
import 'package:wechat/common/store/user_store.dart';
import 'package:wechat/common/utils/log.dart';

class RouteAuthMiddleware extends GetMiddleware {
  @override
  int? get priority => 0;

  @override
  RouteSettings? redirect(String? route) {
    bool isSignIn = UserStore.to.isSignIn;
    log.i(isSignIn);
    if (isSignIn) {
      return null;
    }
    Future.delayed(
      const Duration(milliseconds: 500),
      () => Get.snackbar("認証失敗", "ユーザ名・パスワード不正"),
    );
    return const RouteSettings(name: AppRoute.signIn);
  }
}
