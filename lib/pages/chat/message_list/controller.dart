import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MessageListController extends GetxController {
  final scrollController = ScrollController();

  @override
  void onReady() {
    super.onReady();
    scrollToBottom(milliseconds: 10);
  }


  void scrollToBottom({int milliseconds = 300}) {
    scrollController.animateTo(
      scrollController.position.maxScrollExtent,
      duration: Duration(milliseconds: milliseconds),
      curve: Curves.easeInOut,
    );
  }
}