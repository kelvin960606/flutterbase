import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'Constant/translate.dart';
import 'Core/router.dart';
import 'Services/initialService.dart';

void main() async {
  await initServices();
  runApp(GetMaterialApp(
      translations: Messages(), // your translations
      locale: Locale('en', 'US'),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: pages,
      routingCallback: (routing) {
        if (routing.current == '/home') {
          // do something
        }
      }));
}
