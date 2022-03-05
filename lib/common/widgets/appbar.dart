import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wechat/common/utils/log.dart';

AppBar appBar({
  required Widget title,
  required BuildContext context,
  Widget? leading,
  List<Widget>? actions,
}) {
  final ModalRoute<dynamic>? parentRoute = ModalRoute.of(context);
  final bool canPop = parentRoute?.canPop ?? false;

  Widget? leadingWidget;
  if (canPop) {
    leadingWidget = IconButton(
      onPressed: () {
        Get.back();
      },
      icon: const Icon(
        Icons.arrow_back_ios,
        size: 18,
      ),
    );
  }
  if (leading != null) {
    leadingWidget = leading;
  }

  return AppBar(
    title: title,
    automaticallyImplyLeading: false,
    leading: leadingWidget,
    actions: actions,
  );
}
