import 'package:flutter/material.dart';
import 'package:wechat/common/style/color.dart';

Widget verticalDivider({double height = 16}) {
  return Container(
    height: height,
    width: 1,
    margin: const EdgeInsets.only(left: 4, right: 4, top: 4),
    decoration: const BoxDecoration(
      color: Colors.grey,
    ),
    child: Container(),
  );
}