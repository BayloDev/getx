import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'locale_controller.dart';

class ChangeLang extends StatelessWidget {
  ChangeLang({super.key});
  // final MyLocaleController controllerLang = Get.find();
  final MyLocaleController controllerLang = Get.put(MyLocaleController());
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: true,
            title: Text('5'.tr),
            centerTitle: true,
            actions: [
              IconButton(
                  onPressed: () => Get.back(),
                  icon: const Icon(Icons.arrow_back_sharp))
            ],
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      controllerLang.changeLang('ar');
                    },
                    child: Text('3'.tr),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      controllerLang.changeLang('en');
                    },
                    child: Text('4'.tr),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
