import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/view/route_management/route_management.dart';

import 'page2.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('page 1')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Get.to(const Page1()),
              child: const Text('Go to page 1 (to)'),
            ),
            ElevatedButton(
              onPressed: () => Get.off(const Page2()),
              child: const Text('Go to page 2 (off)'),
            ),
            ElevatedButton(
              onPressed: () => Get.offAll(const RouteManagementPage()),
              child: const Text('Go to Route Management Page (offAll)'),
            ),
          ],
        ),
      ),
    );
  }
}
