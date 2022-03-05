import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wechat/common/widgets/appbar.dart';
import 'package:wechat/pages/chat_list//view.dart';
import 'package:wechat/pages/home/controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  Widget _buildBody() {
    return PageView(
      controller: controller.pageController,
      onPageChanged: controller.handlePageChange,
      children: const [
        ChatListPage(),
        Text('CategoryPage'),
        Text('BookmarksPage'),
        Text('AccountPage'),
      ],
    );
  }

  BottomNavigationBarItem _buildBottomNavItem(String iconName, String label) {
    return BottomNavigationBarItem(
      icon: Image.asset(
        'assets/images/app/${iconName}.png',
        width: 20,
        height: 20,
      ),
      activeIcon: Image.asset(
        'assets/images/app/${iconName}_hl.png',
        width: 20,
        height: 20,
      ),
      label: label,
    );
  }

  Widget _buildBottomNavigationBar() {
    return Obx(
      () => BottomNavigationBar(
        items: [
          _buildBottomNavItem('tabbar_chat', '微信'),
          _buildBottomNavItem('tabbar_friends', '通信录'),
          _buildBottomNavItem('tabbar_discover', '发现'),
          _buildBottomNavItem('tabbar_mine', '我'),
        ],
        currentIndex: controller.page,
        onTap: controller.handleNavBarTap,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
        title: const Text('WeChat'),
        context: context,
      ),
      body: _buildBody(),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }
}
