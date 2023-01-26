// ignore_for_file: avoid_print

import 'package:get/get.dart';

class MyController extends GetxController {
  @override
  void onInit() async {
    // the same of initState, called when the controller created to initialized it
    print('Init MyController');
    print('Get data from data base');
    // becareful if we have 20 pages for ex and all this pages get data from database all this data are fetched at the same time, and the app will blocked !!!
    // to resolve this we use get.lasyput instred get.put

    super.onInit();
  }

  @override
  void onReady() {
    // called after build fun when the controller is created and initialized (rendering widgets)
    print('Ready MyController');
    super.onReady();
  }

  @override
  void onClose() {
    //called when we exit the page
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
