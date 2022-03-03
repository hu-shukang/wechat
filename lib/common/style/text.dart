import 'package:flutter/material.dart';
import 'package:wechat/common/style/color.dart';

TextStyle usernameTextStyle() {
  return const TextStyle(
    fontSize: 15,
    color: AppColor.primaryText,
    fontWeight: FontWeight.w600,
  );
}

TextStyle messageTextStyle() {
  return const TextStyle(
    fontSize: 13,
    color: AppColor.secondaryText,
    fontWeight: FontWeight.normal,
  );
}
