import 'package:get/get.dart';
import 'package:wechat/pages/chat/controller.dart';

class ChatBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChatController());
  }
}