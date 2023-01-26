import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/theme.dart';
import 'package:getx/view/features.dart/features_page1.dart';
import 'package:getx/view/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'bindings.dart';
import 'middleware.dart';
import 'view/home_page.dart';
import 'view/locale/locale.dart';
import 'view/locale/locale_controller.dart';

SharedPreferences? sharedPreferences;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedPreferences = await SharedPreferences.getInstance();
  //await initialServices();
  runApp(MyApp());
}

// Future initialServices() async {
//   Get.putAsync(() => SettingsServices().init());
// }

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final MyLocaleController controllerLang = Get.put(MyLocaleController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      //themeMode: Ge,
      locale: controllerLang.initialLang,
      // translationsKeys: const {
      //   'en': {
      //     '1': 'Home Page',
      //     '2': 'Sign Out',
      //     '3': 'arabic',
      //     '4': 'english',
      //     '5': 'Change Language',
      //   },
      //   'ar': {
      //     '1': 'الصفحة الرئيسية',
      //     '2': 'تسجيل خروج',
      //     '3': 'عربى',
      //     '4': 'إنجليزي',
      //     '5': 'تغيير اللغة',
      //   }
      // },
      translations: MyLocale(),
      initialBinding: MyBindings(),
      fallbackLocale: const Locale('en'),
      getPages: [
        GetPage(
          name: '/',
          page: () => const Login(),
          middlewares: [AuthMidleWare()],
        ),
        GetPage(name: '/home', page: () => HomePage()),
        GetPage(name: '/FeaturesPage1', page: () => FeaturesPage1()),
      ],
    );
  }
}
