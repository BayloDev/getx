import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'page1.dart';
import 'page2.dart';

class RouteManagementPage extends StatelessWidget {
  const RouteManagementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Route Management'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Get.to(const Page1()),
              child: const Text('Go to page 1 (to)'),
            ),
            ElevatedButton(
              onPressed: () => Get.to(const Page2()),
              child: const Text('Go to page 2 (to)'),
            ),
            ElevatedButton(
              onPressed: () => Get.back(),
              child: const Text('back'),
            ),
          ],
        ),
      ),
    );
  }
}
