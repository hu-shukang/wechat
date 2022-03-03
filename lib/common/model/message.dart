class MessageModel {
  MessageModel({
    required this.message,
    required this.time,
    required this.read,
  });
  late final String message;
  late final String time;
  late final bool read;

  MessageModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    time = json['time'];
    read = json['read'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['message'] = message;
    _data['time'] = time;
    _data['read'] = read;
    return _data;
  }

  @override
  String toString() {
    return 'MessageModel{message: $message, time: $time, read: $read}';
  }
}
