import 'dart:convert';

import 'package:wechat/common/model/user.dart';
import 'package:wechat/common/service/storage.dart';

class UserStore {
  static const _signInKey = 'SIGN_IN_KEY';
  static const _isSignInKey = 'IS_SIGN_IN_KEY';

  static Future signIn(SignInModel model) async {
    String modelString = jsonEncode(model);
    bool signInState = model.username == '12345' && model.password == '12345';
    await StorageService.instance.setString(_signInKey, modelString);
    await StorageService.instance.setBool(_isSignInKey, signInState);
  }

  static Future<bool> isSignIn() async {
    return StorageService.instance.getBool(_isSignInKey);
  }
}