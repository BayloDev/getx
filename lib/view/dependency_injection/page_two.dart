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
