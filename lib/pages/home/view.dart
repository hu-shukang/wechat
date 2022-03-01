import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wechat/pages/home/controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: const Center(
        child: const Text('this is home'),
      ),
    );
  }

}