import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/view/features.dart/features_controller.dart';

class FeaturesPage2 extends StatelessWidget {
  FeaturesPage2({super.key});
  final FeaturesController featuresController = Get.put(FeaturesController());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Features Page2'),
            centerTitle: true,
            leading: IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(Icons.arrow_back),
            ),
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Previous Route: ${featuresController.previousRoute}'),
                  Text('Current Route: ${featuresController.currentRoute}'),
                  Obx(
                    () => Text(
                        'isDialoOpen: ${featuresController.isDialogShow.value}'),
                  ),
                  Obx(
                    () => Text(
                        'isBottomSheetOpen: ${featuresController.isBottomSheetShow.value}'),
                  ),
                  Text('First Name: ${featuresController.firstName}'),
                  Text('Last Name: ${featuresController.lastName}'),
                  Text('IsPlatform Android: ${featuresController.myPlatform}'),
                  Text('Height: ${featuresController.height}'),
                  Text('Width: ${featuresController.width}'),
                  Text('isLandscape: ${context.isLandscape}'),
                  Text('isPortrait: ${context.isPortrait}'),
                  ElevatedButton(
                    onPressed: () {
                      Get.bottomSheet(
                        Container(
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white10,
                            shape: BoxShape.rectangle,
                          ),
                          child: const Center(child: Text('BottomSheet')),
                        ),
                        enterBottomSheetDuration: const Duration(
                          milliseconds: 300,
                        ),
                        exitBottomSheetDuration: const Duration(
                          milliseconds: 300,
                        ),
                        shape: const RoundedRectangleBorder(
                          side: BorderSide(color: Colors.teal, width: 3),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(100),
                          ),
                        ),
                        backgroundColor: Colors.teal.shade100,
                        barrierColor: Colors.black12,
                      ).then((value) =>
                          featuresController.isBottomSheetShowChange());
                      featuresController.isBottomSheetShowChange();
                    },
                    child: const Text('show ButtomSheet'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Get.defaultDialog(
                        title: 'title',
                        content: const Text(
                            'Dialog content Dialog contentDialog contentDialog content '),
                        textCancel: 'cancel',
                        textConfirm: 'confirm',
       

                        onConfirm: () => Get.back(),
                        onCancel: () => Get.back(),
                      ).then(
                          (value) => featuresController.isDialogShowChange());
                      featuresController.isDialogShowChange();
                    },
                    child: const Text('show dialog'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
