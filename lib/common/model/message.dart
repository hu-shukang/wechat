class MessageModel {
  String message;
  String time;

  MessageModel({
    required this.message,
    required this.time,
  });

  Map<String, dynamic> toJson() => {
        "message": message,
        "time": time,
      };
}
