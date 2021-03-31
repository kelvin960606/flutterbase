import 'package:flutterbase/Controllers/authController.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'apiService.dart';

Future initServices() async {
  await Get.putAsync(() => GetStorage.init());
  final AuthController auth = Get.put(AuthController());
  auth.init();
  final ApiService api = Get.put(ApiService());
  api.init();
}
