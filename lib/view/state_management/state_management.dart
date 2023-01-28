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
