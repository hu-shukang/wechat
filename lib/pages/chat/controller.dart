import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:wechat/common/model/friend.dart';

class ChatController extends GetxController {
  final _friend = Rx<FriendModel?>(null);
  FriendModel? get friend => _friend.value;

  @override
  void onInit() {
    super.onInit();
    _readFriendData();
  }

  void _readFriendData() async {
    String id = Get.parameters['id'] ?? '';
    String jsonText = await rootBundle.loadString('assets/data/friend_data.json');
    var json = jsonDecode(jsonText);
    List<FriendModel> friendList = FriendModel.fromJsonList(json);
    _friend.value = friendList.firstWhere((element) => element.id == id);
  }
}