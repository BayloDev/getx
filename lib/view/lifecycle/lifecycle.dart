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
