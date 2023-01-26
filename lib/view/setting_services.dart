import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsServices extends GetxService {
  SharedPreferences? sharedPref;
  Future<SettingsServices> init() async {
    //start services
    sharedPref = await SharedPreferences.getInstance();
    //end services

    return this;
  }
}
