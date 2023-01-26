import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomSheetGet extends StatelessWidget {
  const BottomSheetGet({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Snackbar'),
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
                      );
                    },
                    child: const Text('show ButtomSheet'),
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
