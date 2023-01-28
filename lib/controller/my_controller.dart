// ignore_for_file: avoid_print

import 'package:get/get.dart';

class MyController extends GetxController {
  @override
  void onInit() async {
    print('Init MyController');
    print('Get data from data base');
    super.onInit();
  }

  @override
  void onReady() {
    print('Ready MyController');
    super.onReady();
  }

  @override
  void onClose() {
    print('Close MyController');

    super.onClose();
  }

  RxInt counter = 0.obs;
  void increment() {
    counter++;
  }

  void decrement() {
    counter--;
  }
}
