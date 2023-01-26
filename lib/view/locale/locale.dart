import 'package:get/get_navigation/src/root/internacionalization.dart';

class MyLocale implements Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': {
          '1': 'Home Page',
          '2': 'Sign Out',
          '3': 'arabic',
          '4': 'english',
          '5': 'Change Language',
        },
        'ar': {
          '1': 'الصفحة الرئيسية',
          '2': 'تسجيل خروج',
          '3': 'عربى',
          '4': 'إنجليزي',
          '5': 'تغيير اللغة',
        }
      };
}
