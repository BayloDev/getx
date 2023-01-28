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
