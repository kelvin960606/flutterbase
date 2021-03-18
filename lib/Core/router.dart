import 'package:flutterbase/Pages/home.dart';
import 'package:flutterbase/Pages/splash.dart';
import 'package:flutterbase/Pages/login.dart';
import 'package:get/route_manager.dart';

var pages = [
  GetPage(name: '/', page: () => Splash()),
  GetPage(name: '/home', page: () => Home()),
  GetPage(name: '/login', page: () => Login()),
];
