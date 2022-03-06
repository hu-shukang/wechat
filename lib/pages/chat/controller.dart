import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:wechat/common/model/friend.dart';
import 'package:wechat/common/utils/log.dart';
import 'package:wechat/pages/chat/message_list/controller.dart';

class ChatController extends GetxController {
  final _friend = Rx<FriendModel?>(null);
  FriendModel? get friend => _friend.value;

  final messageController = TextEditingController();
  final messageFocus = FocusNode();

  @override
  void onInit() {
    super.onInit();
    _readFriendData();
    messageFocus.addListener(_onMessageFocusChange);
  }

  void _readFriendData() async {
    String id = Get.parameters['id'] ?? '';
    String jsonText = await rootBundle.loadString('assets/data/friend_data.json');
    var json = jsonDecode(jsonText);
    List<FriendModel> friendList = FriendModel.fromJsonList(json);
    _friend.value = friendList.firstWhere((element) => element.id == id);
  }

  void _onMessageFocusChange() {
    if (messageFocus.hasFocus) {
      MessageListController mlc = Get.find<MessageListController>();
      mlc.scrollToBottom();
    }
  }

  void handleSpeakBtnClick() {
    log.i('handleSpeakBtnClick');
  }

  void handleEmojiBtnClick() {
    log.i('handleEmojiBtnClick');
  }

  void handlePlusBtnClick() {
    log.i('handlePlusBtnClick');
  }


  @override
  void dispose() {
    messageFocus.dispose();
    messageController.dispose();
    super.dispose();
  }
}
