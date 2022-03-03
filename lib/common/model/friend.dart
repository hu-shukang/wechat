import 'package:wechat/common/model/message.dart';

class FriendModel {
  FriendModel({
    required this.username,
    required this.icon,
    required this.latestTime,
    required this.messages,
  });
  late final String username;
  late final String icon;
  late final String latestTime;
  late final List<MessageModel> messages;

  FriendModel.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    icon = json['icon'];
    latestTime = json['latestTime'];
    messages = List.from(json['messages']).map((e) => MessageModel.fromJson(e)).toList();
  }

  static List<FriendModel> fromJsonList(List<dynamic> jsonArr) {
    return List.from(jsonArr).map((e) => FriendModel.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['username'] = username;
    _data['icon'] = icon;
    _data['latestTime'] = latestTime;
    _data['messages'] = messages.map((e) => e.toJson()).toList();
    return _data;
  }

  @override
  String toString() {
    return 'FriendModel{username: $username, icon: $icon, latestTime: $latestTime, messages: $messages}';
  }
}
