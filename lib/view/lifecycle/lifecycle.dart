// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/my_controller.dart';

class LifeCycle extends StatelessWidget {
  LifeCycle({super.key});
  final controller = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    print('build Function called');
    return Scaffold(
      appBar: AppBar(title: const Text('lifecycle')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'When we exit the page the controller will removed and reinitialized, so we should use permanent=true in the Get.put() this function create and initialized the controller at once time',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              Obx(
                () => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () => controller.decrement(),
                      icon: const Icon(Icons.remove),
                    ),
                    Text(
                      '${controller.counter}',
                      style: const TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    IconButton(
                      onPressed: () => controller.increment(),
                      icon: const Icon(Icons.add),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
