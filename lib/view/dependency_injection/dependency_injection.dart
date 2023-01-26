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
              const Text(
                '   Dependency Injection: is the technique of injecting instances of one class into another, we can place different variables in different classes and have them depend on one another, ultimately organizing the code at a greater level\nA basic approach to inject dependences in flutter is through constructors or getx\n  White the above approach is neat, we are still declaring our dependencies in the view class, for organizing the code even further, we can (and should) seperate them from the view using "Bindings"',
                style: TextStyle(fontSize: 20),
              ),
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
