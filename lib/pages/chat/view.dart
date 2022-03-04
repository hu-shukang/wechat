import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wechat/common/widgets/appbar.dart';
import 'package:wechat/pages/chat/controller.dart';

class ChatPage extends GetView<ChatController> {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
        title: 'Chat',
        context: context,
      ),
      body: Container(
        child: Obx(() => Text(controller.id)),
      ),
    );
  }

}