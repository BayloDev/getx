import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/getbuilder_controller.dart';

class PageTwo extends StatelessWidget {
  PageTwo({super.key});
  final MyGetBuilderContoller controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('page two')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'If we go to the screen one first and then the screen two this dont give us error because the controller is initialized in the first page and the value rest the same until we dont use permanent in page two\n Get.lazyPut() : just create the controller, and when it looks we need this controller it initialised it',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              GetBuilder<MyGetBuilderContoller>(
                builder: (controller) {
                  return Text(
                    '${controller.counter}',
                    style: const TextStyle(
                      fontSize: 30,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
