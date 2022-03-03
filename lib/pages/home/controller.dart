import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:wechat/common/model/friend.dart';
import 'package:wechat/common/utils/log.dart';

class HomeController extends GetxController {

  final _friendList = Rx<List<FriendModel>>([]);
  List<FriendModel> get friendList => _friendList.value;

  @override
  void onInit() {
    readFriendData();
    super.onInit();
  }

  void readFriendData() async {
    var jsonText = await rootBundle.loadString('assets/data/friend_data.json');
    var json = jsonDecode(jsonText);
    _friendList.value = FriendModel.fromJsonList(json);
  }
}