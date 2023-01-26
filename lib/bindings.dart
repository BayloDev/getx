import 'package:get/get.dart';
import 'package:getx/controller/getx_controller.dart';
import 'package:getx/controller/obx_controller.dart';
import 'package:getx/view/locale/locale_controller.dart';

import 'controller/getbuilder_controller.dart';

class MyBindings implements Bindings {
  @override
  void dependencies() {
    //permanent has no effect here beacause we bind the controller in main page(parent)
    Get.put(MyGetBuilderContoller(), permanent: true);
    Get.put(MyGetXContoller(), permanent: false);
    Get.put(MyObxContoller(), permanent: false);
    Get.put(MyLocaleController());
    //Get.lazyPut(() => MyObxContoller(), fenix: true);
  }
//permanent has no effect if we bind the controller in the parent page of those controllers,
  // fenix:false => delete controller from memory and if we use this controller give us error
  //get.lazyPut: dont save the controller state, everytime we used it it intialized it
  //get.put initialized all controller at once time and if we need to save the state we add permanent:true
}
