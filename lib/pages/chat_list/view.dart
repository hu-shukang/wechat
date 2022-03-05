import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wechat/common/model/friend.dart';
import 'package:wechat/common/model/message.dart';
import 'package:wechat/common/style/color.dart';
import 'package:wechat/common/style/text.dart';
import 'package:wechat/common/widgets/avatar.dart';
import 'package:wechat/pages/chat_list/controller.dart';

class ChatListPage extends GetView<ChatListController> {
  const ChatListPage({Key? key}) : super(key: key);

  Widget _buildMessage(FriendModel m, BuildContext context) {
    MessageModel message = m.messages.last;
    double paddingValue = 5.0;
    double rowHeight = 50.0;
    double totalHeight = 60.0;
    int unreadCount = m.messages.where((msg) => msg.read == false).length;

    return FractionallySizedBox(
        widthFactor: 1,
        child: GestureDetector(
          onTap: () => controller.handleChatItemTap(m),
          child: Container(
            height: totalHeight,
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: AppColor.borderColor,
                  width: 1.0,
                ),
              ),
            ),
            child: Row(
              children: [
                avatar(size: totalHeight, src: m.icon, tip: unreadCount > 0 ? unreadCount.toString() : null),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(paddingValue),
                    height: rowHeight,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                m.username,
                                style: usernameTextStyle(),
                              ),
                            ),
                            Text(
                              message.time,
                              style: messageTextStyle(),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            LimitedBox(
                              maxWidth: MediaQuery.of(context).size.width - 150,
                              child: Text(
                                message.message,
                                style: messageTextStyle(),
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  Widget _buildMessageList(BuildContext context) {
    return Obx(() => controller.friendList.isEmpty
        ? Container()
        : Column(
            children: controller.friendList.map((FriendModel m) => _buildMessage(m, context)).toList(),
          ));
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: _buildMessageList(context),
    );
  }
}
