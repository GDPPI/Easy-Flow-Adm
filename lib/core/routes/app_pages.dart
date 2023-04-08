// ignore_for_file: prefer_const_constructors

import 'package:easyflow/layers/modules/home/home_page.dart';
import 'package:easyflow/layers/modules/horary/horary_binding.dart';
import 'package:easyflow/layers/modules/horary/pages/horary_edit_page.dart';
import 'package:easyflow/layers/modules/horary/pages/horary_page.dart';
import 'package:easyflow/layers/modules/login/login_binding.dart';
import 'package:easyflow/layers/modules/login/login_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../../layers/modules/horary/pages/horary_add_page.dart';

part './app_routes.dart';

abstract class AppPages {
  static const initialRoute = Routes.HORARY_EDIT_TABLES;
  static final pages = [
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
    ),
    GetPage(
      name: Routes.HORARY,
      page: () => HoraryPage(),
      binding: HoraryBinding(),
    ),
    GetPage(
      name: Routes.HORARY_ADD,
      page: () => HoraryAddPage(),
      binding: HoraryBinding(),
    ),
    GetPage(
      name: Routes.HORARY_EDIT_TABLES,
      page: () => HoraryEditPage(),
      binding: HoraryBinding(),
    ),
  ];
}
