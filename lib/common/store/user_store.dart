import 'dart:convert';

import 'package:get/get.dart';
import 'package:wechat/common/model/user.dart';
import 'package:wechat/common/service/storage.dart';

class UserStore extends GetxController {
  static UserStore get to => Get.find();
  static const _signInKey = 'SIGN_IN_KEY';

  final _isSignIn = false.obs;
  bool get isSignIn => _isSignIn.value;

  Future signIn(SignInModel model) async {
    String modelString = jsonEncode(model);
    bool signInState = model.username == '123' && model.password == '123';
    await StorageService.to.setString(_signInKey, modelString);
    _isSignIn.value = signInState;
  }

  @override
  void onInit() {
    super.onInit();
    _initSignIn();
  }

  void _initSignIn() {
    String modelString = StorageService.to.getString(_signInKey);
    if (modelString.isNotEmpty) {
      SignInModel model = SignInModel.fromJson(jsonDecode(modelString));
      bool signInState = model.username == '123' && model.password == '123';
      _isSignIn.value = signInState;
    }
  }
}