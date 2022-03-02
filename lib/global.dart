import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wechat/common/service/storage.dart';
import 'package:wechat/common/store/user_store.dart';

class Global {
  static Future init() async {
    WidgetsFlutterBinding.ensureInitialized();

    await Get.putAsync<StorageService>(() => StorageService().init());
    Get.put<UserStore>(UserStore());
  }
}
