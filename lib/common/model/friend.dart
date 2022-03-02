import 'package:wechat/common/model/message.dart';

class FriendModel {
  String username;
  String icon;
  String latestTime;
  List<MessageModel>? messages;

  FriendModel({
    required this.username,
    required this.icon,
    required this.latestTime,
    this.messages,
  });

  Map<String, dynamic> toJson() => {
        "username": username,
        "icon": icon,
        "latestTime": latestTime,
        "messages": messages == null || messages!.isEmpty
            ? []
            : List<MessageModel>.from(messages!.map((e) => e.toJson())),
      };
}
