// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/getbuilder_controller.dart';

class GetBuilderScreen extends StatelessWidget {
  GetBuilderScreen({super.key});
  final MyGetBuilderContoller controller = Get.find();
  @override
  Widget build(BuildContext context) {
    print('rebuild buildFunction');
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetBuilder'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'If any value change state all getBuilder listen to the same controller will rebuild',
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 40),
              GetBuilder<MyGetBuilderContoller>(
                builder: (controller) {
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
              GetBuilder<MyGetBuilderContoller>(
                builder: (controller) {
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
              GetBuilder<MyGetBuilderContoller>(
                builder: (controller) {
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
