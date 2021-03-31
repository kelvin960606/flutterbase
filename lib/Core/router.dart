import 'package:flutterbase/Pages/home.dart';
import 'package:flutterbase/Pages/splash.dart';
import 'package:flutterbase/Pages/login.dart';
import 'package:flutterbase/Pages/Pokedex/pokedex.dart';
import 'package:flutterbase/Pages/Pokedex/pokemons.dart';
import 'package:get/route_manager.dart';

var pages = [
  GetPage(name: '/', page: () => Splash()),
  GetPage(name: '/home', page: () => Home()),
  GetPage(name: '/login', page: () => Login()),
  GetPage(name: '/pokedex', page: () => Pokedex()),
  GetPage(name: '/pokemons', page: () => Pokemons()),
];
