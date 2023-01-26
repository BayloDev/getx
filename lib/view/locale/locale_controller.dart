import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/main.dart';

class MyLocaleController extends GetxController {
  Locale initialLang = const Locale('en');
  //  sharedPreferences!.getString('lang') == null
  //     ? const Locale('en')
  //     : Locale(sharedPreferences!.getString('lang')!);
  void changeLang(String codeLang) {
    Locale locale = Locale(codeLang);
    sharedPreferences!.setString('lang', codeLang);
    Get.updateLocale(locale);
  }
}
