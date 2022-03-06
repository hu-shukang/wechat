import 'package:get/get.dart';
import 'package:wechat/pages/chat/controller.dart';
import 'package:wechat/pages/chat/message_list/controller.dart';

class ChatBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChatController());
    Get.lazyPut(() => MessageListController());
  }
}