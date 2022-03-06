import 'dart:convert';

import 'package:basic_utils/basic_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:wechat/common/model/friend.dart';
import 'package:wechat/common/model/message.dart';
import 'package:wechat/common/utils/log.dart';

class ChatController extends GetxController {
  final _friend = Rx<FriendModel?>(null);
  FriendModel? get friend => _friend.value;

  final _emptyInput = Rx<bool>(true);
  bool get emptyInput => _emptyInput.value;

  final messageController = TextEditingController();
  final messageFocus = FocusNode();

  @override
  void onInit() {
    super.onInit();
    _readFriendData();
    messageFocus.addListener(_onMessageFocusChange);

    messageController.addListener(() {
      _emptyInput.value = StringUtils.isNullOrEmpty(messageController.value.text);
    });
  }

  void _readFriendData() async {
    String id = Get.parameters['id'] ?? '';
    String jsonText = await rootBundle.loadString('assets/data/friend_data.json');
    var json = jsonDecode(jsonText);
    List<FriendModel> friendList = FriendModel.fromJsonList(json);
    _friend.value = friendList.firstWhere((element) => element.id == id);
    update(['message_list']);
  }

  void _onMessageFocusChange() {
    if (messageFocus.hasFocus) {
    }
  }

  void submitMessage() {
    if (_friend.value != null) {
      log.i('submitMessage OK');
      String msg = messageController.value.text;
      MessageModel mm = MessageModel(message: msg, time: 'now', read: true, self: true);
      _friend.value!.messages.add(mm);
      update(['message_list']);
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
