import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'Core/router.dart';
import 'Services/initialService.dart';

void main() async {
  await initServices();
  runApp(GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/pokedex',
      getPages: pages,
      routingCallback: (routing) {
        if (routing.current == '/home') {
          // do something
        }
      }));
}
