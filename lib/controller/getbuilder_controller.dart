import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class MyGetBuilderContoller extends GetxController {
  int number1 = 0;
  void incrementNub1() {
    number1++;
    update();
  }

  void decrementNub1() {
    number1--;
    update();
  }

  int number2 = 0;
  void incrementNub2() {
    number2++;
    update();
  }

  void decrementNub2() {
    number1--;
    update();
  }

  int get sum => number1 + number2;

  int counter = 0;
  void increment() {
    counter++;
    update();
  }

  void decrement() {
    counter--;
    update();
  }
}
