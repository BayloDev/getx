import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/theme.dart';

class ThemeController extends GetxController {
  RxBool isDark = true.obs;
  ThemeData myTheme = Themes.customLightTheme;
  void changeMyTheme() {
    isDark.value = !isDark.value;
    myTheme = isDark.value ? Themes.customDarkTheme : Themes.customLightTheme;
    print(myTheme.toString());
    print(isDark);
  }
}
