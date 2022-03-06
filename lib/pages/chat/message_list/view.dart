import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wechat/common/model/friend.dart';
import 'package:wechat/common/model/message.dart';
import 'package:wechat/common/style/color.dart';
import 'package:wechat/common/widgets/avatar.dart';
import 'package:wechat/pages/chat/message_list/controller.dart';

class MessageList extends GetView<MessageListController> {
  final FriendModel friend;
  const MessageList({Key? key, required this.friend}) : super(key: key);

  Widget _buildItem(int index, BuildContext context) {
    MessageModel message = friend.messages[index];
    const messageTopMargin = 10.0;
    const messageHorizontalMargin = 6.0;
    String avatarSrc = message.self ? 'assets/images/friends/me.jpg' : friend.icon;

    List<Widget> widgetList = [
      avatar(size: 50, src: avatarSrc),
      LimitedBox(
        maxWidth: MediaQuery.of(context).size.width - 100,
        child: Bubble(
          padding: const BubbleEdges.all(8),
          margin: message.self
              ? const BubbleEdges.only(top: messageTopMargin, right: messageHorizontalMargin)
              : const BubbleEdges.only(top: messageTopMargin, left: messageHorizontalMargin),
          nip: message.self ? BubbleNip.rightTop : BubbleNip.leftTop,
          color: message.self ? AppColor.chatSelfColor : AppColor.chatFriendColor,
          child: Text(
            message.message,
            textAlign: TextAlign.left,
          ),
        ),
      )
    ];

    return Row(
      mainAxisAlignment: message.self ? MainAxisAlignment.end : MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: message.self ? widgetList.reversed.toList() : widgetList,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: controller.scrollController,
      itemCount: friend.messages.length,
      itemBuilder: (BuildContext ctx, int index) {
        return _buildItem(index, context);
      },
    );
  }
}
