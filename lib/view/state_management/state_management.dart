import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/view/state_management/get_builder_screen.dart';
import 'package:getx/view/state_management/obx_screen.dart';
import 'package:getx/view/state_management/getx_screen.dart';

class StateManagementPage extends StatelessWidget {
  const StateManagementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('State Management'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'GetBuilder: is fast and has low memory footprint, but, it\'s not reactive, This means we will missing out on the power of streams we need to update the value,\nWell, for this very reason, Getx (class) was created.\nObx like Getx but simple to use, we need to inject the controller(like initialization) \nObx can use multiple controller \nIf there are many Widgets listen to the same controller we init this contoller just the first time we called it(the first GetX or obx or GetBuilder)\n When we exit the page use any state management the controller will deleted and reinitialized',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 30),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () => Get.to(() => GetBuilderScreen()),
                    child: const Text('Go to GetBuilder Screen'),
                  ),
                  ElevatedButton(
                    onPressed: () => Get.to(() => ObxScreen()),
                    child: const Text('Go to Obx Screen'),
                  ),
                  ElevatedButton(
                    onPressed: () => Get.to(() => GetxScreen()),
                    child: const Text('Go to GetX Screen'),
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
