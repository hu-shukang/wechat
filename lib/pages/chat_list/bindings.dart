import 'package:get/get.dart';
import 'package:wechat/pages/chat_list/controller.dart';

class ChatListBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChatListController>(() => ChatListController());
  }
}