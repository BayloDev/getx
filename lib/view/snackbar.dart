import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetSnackbar extends StatelessWidget {
  const GetSnackbar({super.key});

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
                      Get.snackbar(
                        'title',
                        'snackbar content',
                        backgroundColor: Colors.black54,
                        borderColor: Colors.orange,
                        borderWidth: 2,
                        borderRadius: 10,
                        colorText: Colors.white70,
                        duration: const Duration(seconds: 4),
                        icon: const Icon(Icons.info),
                        dismissDirection: DismissDirection.startToEnd,
                        leftBarIndicatorColor: Colors.deepOrange,
                        snackPosition: SnackPosition.BOTTOM,
                        margin: const EdgeInsets.all(20),
                      );
                    },
                    child: const Text('show snackbar'),
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
