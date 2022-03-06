import 'package:get/get.dart';
import 'package:wechat/pages/chat/message_list/controller.dart';

class MessageListBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MessageListController());
  }
}