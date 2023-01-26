import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class MyObxContoller extends GetxController {
  RxInt number1 = 0.obs;
  void incrementNub1() {
    number1++;
  }

  void decrementNub1() {
    number1--;
  }

  RxInt number2 = 0.obs;
  void incrementNub2() {
    number2++;
  }

  void decrementNub2() {
    number1--;
  }

  int get sum => number1.value + number2.value;
}
