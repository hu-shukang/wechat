import 'package:get/get.dart';

class ChatController extends GetxController {
  final _id = Rx<String>('');
  String get id => _id.value;

  @override
  void onInit() {
    super.onInit();
    _id.value = Get.parameters['id'] ?? '';
  }
}