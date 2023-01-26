import 'package:get/get.dart';

class FeaturesController extends GetxController {
  String? firstName;
  String? lastName;
  String? previousRoute;
  String? currentRoute;
  RxBool isDialogShow = false.obs;
  RxBool isBottomSheetShow = false.obs;
  late bool myPlatform;
  late double width;
  late double height;
  void isBottomSheetShowChange() {
    isBottomSheetShow.value = Get.isBottomSheetOpen!;
  }

  void isDialogShowChange() {
    isDialogShow.value = Get.isDialogOpen!;
  }

  @override
  void onInit() {
    firstName = Get.arguments['firstName'];
    lastName = Get.arguments['lastName'];
    previousRoute = Get.routing.previous;
    currentRoute = Get.routing.current;
    myPlatform = GetPlatform.isAndroid;
    width = Get.width;
    height = Get.height;
    super.onInit();
  }
}
