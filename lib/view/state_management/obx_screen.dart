// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/obx_controller.dart';

class ObxScreen extends StatelessWidget {
  ObxScreen({super.key});
  final MyObxContoller controller = Get.find();
  @override
  Widget build(BuildContext context) {
    print('rebuild buildFunction');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Obx'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
       
              Obx(
                () {
                  print('rebuild number1');
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () => controller.decrementNub1(),
                        icon: const Icon(Icons.remove),
                      ),
                      Text(
                        '${controller.number1}',
                        style: const TextStyle(
                          fontSize: 30,
                        ),
                      ),
                      IconButton(
                        onPressed: () => controller.incrementNub1(),
                        icon: const Icon(Icons.add),
                      ),
                    ],
                  );
                },
              ),
              Obx(
                () {
                  print('rebuild number2 ');
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () => controller.decrementNub2(),
                        icon: const Icon(Icons.remove),
                      ),
                      Text(
                        '${controller.number2}',
                        style: const TextStyle(
                          fontSize: 30,
                        ),
                      ),
                      IconButton(
                        onPressed: () => controller.incrementNub2(),
                        icon: const Icon(Icons.add),
                      ),
                    ],
                  );
                },
              ),
              const SizedBox(height: 30),
              Obx(
                () {
                  print('rebuild sum');
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sum : ${controller.sum}',
                        style: const TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ],
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
