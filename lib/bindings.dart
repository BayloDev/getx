import 'package:get/get.dart';
import 'package:getx/controller/getx_controller.dart';
import 'package:getx/controller/obx_controller.dart';
import 'package:getx/view/locale/locale_controller.dart';

import 'controller/getbuilder_controller.dart';

class MyBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(MyGetBuilderContoller(), permanent: true);
    Get.put(MyGetXContoller(), permanent: false);
    Get.put(MyObxContoller(), permanent: false);
    Get.put(MyLocaleController());
    //Get.lazyPut(() => MyObxContoller(), fenix: true);
  }
}
