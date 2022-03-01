import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wechat/common/widgets/button.dart';
import 'package:wechat/common/widgets/divider.dart';
import 'package:wechat/common/widgets/input.dart';
import 'package:wechat/pages/sign_in/controller.dart';

class SignInPage extends GetView<SignInController> {
  const SignInPage({Key? key}) : super(key: key);

  Widget _buildLogo() {
    return Container(
      width: 100,
      height: 60,
      margin: const EdgeInsets.only(top: 80),
      child: Image.asset(
        'assets/images/logo-1.png',
        fit: BoxFit.fitHeight,
      ),
    );
  }

  Widget _buildForm(BuildContext context) {
    return Container(
      width: 300,
      margin: const EdgeInsets.only(top: 60),
      child: Column(
        children: [
          inputTextEditWithLabel(
            label: 'ユーザ名',
            controller: controller.username,
            hitText: 'ユーザ名を入力してください',
            marginTop: 0,
          ),
          inputTextEditWithLabel(
            label: 'パスワード',
            controller: controller.password,
            keyboardType: TextInputType.visiblePassword,
            hitText: 'パスワードを入力してください',
            isPassword: true,
          ),
          Container(
            margin: const EdgeInsets.only(top: 30),
            child: primaryButton(
              onPressed: controller.handleSignIn,
              label: 'ログイン',
              context: context,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: secondaryButton(
              onPressed: controller.handleNavSignUp,
              label: '新規登録',
              context: context,
            ),
          )
        ],
      ),
    );
  }

  Widget _buildFooter() {
    return Container(
      width: 300,
      margin: const EdgeInsets.only(bottom: 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          linkButton(label: 'パスワード忘れ', onPressed: (){}),
          verticalDivider(),
          linkButton(label: 'その他', onPressed: (){}),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Center(
            child: Column(
              children: [
                _buildLogo(),
                _buildForm(context),
                const Spacer(),
                _buildFooter(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
