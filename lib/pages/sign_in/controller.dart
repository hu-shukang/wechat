import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wechat/common/model/user.dart';
import 'package:wechat/common/routes/app_route.dart';
import 'package:wechat/common/store/user_store.dart';

class SignInController extends GetxController {
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();

  void handleNavSignUp() {
    Get.toNamed(AppRoute.signUp);
  }

  void handleSignIn() async {
    SignInModel signInModel = SignInModel(
      username: username.value.text,
      password: password.value.text,
    );
    await UserStore.to.signIn(signInModel);
    Get.offNamed(AppRoute.home);
  }

  @override
  void dispose() {
    username.dispose();
    password.dispose();
    super.dispose();
  }
}
