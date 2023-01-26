import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/getbuilder_controller.dart';

class PageOne extends StatelessWidget {
  PageOne({super.key});
  final MyGetBuilderContoller controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('page one')),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () => controller.decrement(),
                    icon: const Icon(Icons.remove),
                  ),
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
                  IconButton(
                    onPressed: () => controller.increment(),
                    icon: const Icon(Icons.add),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
