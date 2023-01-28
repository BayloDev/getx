import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'page_one.dart';
import 'page_two.dart';

class DependencyInjectionPage extends StatelessWidget {
  const DependencyInjectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dependency Injection'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
 
              ElevatedButton(
                onPressed: () => Get.to(() => PageOne()),
                child: const Text('Go to page one'),
              ),
              ElevatedButton(
                onPressed: () => Get.to(() => PageTwo()),
                child: const Text('Go to page two'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
