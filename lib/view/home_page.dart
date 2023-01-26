import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/main.dart';
import 'package:getx/view/dependency_injection/dependency_injection.dart';
import 'package:getx/view/features.dart/features_page1.dart';
import 'package:getx/view/locale/change_lang.dart';
import 'package:getx/view/login.dart';
import 'bottomsheet.dart';
import 'dialog.dart';
import 'lifecycle/lifecycle.dart';
import 'route_management/route_management.dart';
import 'snackbar.dart';
import 'state_management/state_management.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final List<Map<String, Object>> pages = [
    {
      'Route Management': const RouteManagementPage(),
    },
    {
      'State Management': const StateManagementPage(),
    },
    {
      'Dependency Injection': const DependencyInjectionPage(),
    },
    {
      'controller\'s lifecycle ': LifeCycle(),
    },
    {
      'Change Lang': ChangeLang(),
    },
    {
      'Dialog': const GetDialog(),
    },
    {
      'Snackbar': const GetSnackbar(),
    },
    {
      'BottomSheet': const BottomSheetGet(),
    },
    {
      'Features Page1': FeaturesPage1(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //theme: Themes.customLightTheme,

      // I dont use this
      // getPages: [
      //   GetPage(name: '/p1', page: () => const Page1()),
      //   GetPage(name: '/p2', page: () => const Page2()),
      //   GetPage(name: '/RoutePage', page: () => const RouteManagementPage()),
      //   GetPage(name: '/StatePage', page: () => StateManagementPage()),
      // ],
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('1'.tr),
            actions: [
              ElevatedButton(
                onPressed: () {
                  sharedPreferences!
                      .clear()
                      .then((value) => Get.to(() => const Login()));
                },
                child: Text('2'.tr),
              ),
              IconButton(
                onPressed: () {
                  if (Get.isDarkMode) {
                    Get.changeTheme(ThemeData.light());
                    print('Light');
                  } else {
                    Get.changeTheme(ThemeData.dark());
                    print('Dark');
                  }
                },
                icon: Icon(Get.isDarkMode ? Icons.light_mode : Icons.dark_mode),
              ),
            ],
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: pages.length,
                      itemBuilder: (BuildContext context, int index) =>
                          ElevatedButton(
                        onPressed: () =>
                            Get.to(() => pages[index].values.first as Widget),
                        child: Text(pages[index].keys.first),
                      ),
                    ),
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
