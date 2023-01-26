import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'features_page2.dart';

class FeaturesPage1 extends StatelessWidget {
  FeaturesPage1({super.key});
  final TextEditingController firstName = TextEditingController();
  final TextEditingController lastName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Features Page1'),
            centerTitle: true,
            leading: IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(Icons.arrow_back),
            ),
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: firstName,
                    decoration: const InputDecoration(helperText: 'first name'),
                  ),
                  TextFormField(
                    controller: lastName,
                    decoration: const InputDecoration(helperText: 'last name'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Get.to(
                        () => FeaturesPage2(),
                        arguments: {
                          'firstName': firstName.text,
                          'lastName': lastName.text
                        },
                      );
                    },
                    child: const Text('Send this info to Features Page2'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
