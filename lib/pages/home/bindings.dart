import 'package:get/get.dart';
import 'package:wechat/pages/chat_list/controller.dart';
import 'package:wechat/pages/home/controller.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => ChatListController());
  }
}