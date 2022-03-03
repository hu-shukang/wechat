import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wechat/common/model/friend.dart';
import 'package:wechat/common/model/message.dart';
import 'package:wechat/common/style/color.dart';
import 'package:wechat/common/style/text.dart';
import 'package:wechat/pages/home/controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  Widget _buildMessage(FriendModel m) {
    MessageModel message = m.messages.last;
    double paddingValue = 5.0;
    double rowHeight = 50.0;
    double totalHeight = 60.0;
    int unreadCount = m.messages.where((msg) => msg.read == false).length;

    return FractionallySizedBox(
      widthFactor: 1,
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
            Container(
              height: totalHeight,
              width: totalHeight,
              child: Stack(
                children: [
                  Positioned(
                    top: 5,
                    right: 5,
                    child: Image.asset(
                      m.icon,
                      fit: BoxFit.cover,
                      height: rowHeight,
                      width: rowHeight,
                    ),
                  ),
                  unreadCount > 0
                      ? Positioned(
                          child: Container(
                            child: Text(
                              unreadCount.toString(),
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                            ),
                            alignment: const Alignment(0, 0),
                            height: 16,
                            width: 16,
                            decoration: const BoxDecoration(
                                color: Colors.red, borderRadius: BorderRadius.all(Radius.circular(8))),
                          ),
                          top: 3,
                          right: 0,
                        )
                      : Container()
                ],
              ),
            ),
            // Container(
            //   margin: EdgeInsets.only(right: paddingValue),
            //   height: rowHeight,
            //   width: rowHeight,
            //   child: Image.asset(
            //     m.icon,
            //     fit: BoxFit.cover,
            //   ),
            // ),
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
                    Text(
                      message.message,
                      style: messageTextStyle(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMessageList() {
    return Obx(() => controller.friendList.isEmpty
        ? Container()
        : Column(
            children: controller.friendList.map((FriendModel m) => _buildMessage(m)).toList(),
          ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('WeChat'),
          backgroundColor: Color(0xFFEEEEEE),
        ),
        body: SingleChildScrollView(
          child: _buildMessageList(),
        ));
  }
}
