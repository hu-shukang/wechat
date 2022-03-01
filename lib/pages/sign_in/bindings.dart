import 'package:get/get.dart';
import 'package:wechat/pages/sign_in/controller.dart';

class SignInBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignInController>(() => SignInController());
  }
}