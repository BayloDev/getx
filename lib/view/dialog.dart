import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetDialog extends StatelessWidget {
  const GetDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Dialog'),
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
                      Get.defaultDialog(
                        title: 'title',
                        content: const Text(
                            'Dialog content Dialog contentDialog contentDialog content '),
                        textCancel: 'cancel',
                        textConfirm: 'confirm',
                        // confirm: const Text('confirm'),
                        //   cancel: const Text('cancel'),

                        onConfirm: () => Get.back(),
                        onCancel: () => Get.back(),
                      );
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
