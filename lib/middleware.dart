import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/route_middleware.dart';

import 'main.dart';

class AuthMidleWare extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    if (sharedPreferences!.getInt('id') != null) {
      return const RouteSettings(name: '/home');
    }
    return null;
  }
}
