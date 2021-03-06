import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final _page = Rx<int>(0);
  int get page => _page.value;

  late final PageController pageController;

  void handlePageChange(int page) {
    _page.value = page;
  }

  void handleNavBarTap(int index) {
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 20),
      curve: Curves.ease,
    );
  }

  @override
  void onInit() {
    super.onInit();
    pageController = PageController(initialPage: page);
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
