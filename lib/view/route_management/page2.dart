import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/view/route_management/route_management.dart';

import 'page1.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('page 2')),
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
