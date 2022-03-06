import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wechat/common/style/color.dart';
import 'package:wechat/common/widgets/appbar.dart';
import 'package:wechat/common/widgets/button.dart';
import 'package:wechat/common/widgets/input.dart';
import 'package:wechat/pages/chat/controller.dart';
import 'package:wechat/pages/chat/message_list/view.dart';

class ChatPage extends GetView<ChatController> {
  const ChatPage({Key? key}) : super(key: key);

  Widget _buildMessageList(BuildContext context) {
    return Obx(
      () => controller.friend == null
          ? Container()
          : MessageList(friend: controller.friend!),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
        title: Obx(() => controller.friend == null ? const Text('Chat') : Text(controller.friend!.username)),
        context: context,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: AppColor.chatBackgroundColor,
              child: _buildMessageList(context),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: AppColor.chatBottomBackgroundColor,
              border: Border(
                top: BorderSide(
                  width: 1,
                  color: Color(0xFFDBDBDB),
                ),
              ),
            ),
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                maxHeight: 130,
                minHeight: 50,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  chatIconButton(
                    iconData: Icons.mic_sharp,
                    onPressed: controller.handleSpeakBtnClick,
                    margin: const EdgeInsets.only(right: 8),
                  ),
                  Expanded(
                    child: chatTextField(
                      controller: controller.messageController,
                      focusNode: controller.messageFocus,
                    ),
                  ),
                  chatIconButton(
                    iconData: Icons.mood_outlined,
                    onPressed: controller.handleEmojiBtnClick,
                  ),
                  chatIconButton(
                    iconData: Icons.add_circle_outline,
                    onPressed: controller.handlePlusBtnClick,
                    margin: const EdgeInsets.only(right: 8),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
