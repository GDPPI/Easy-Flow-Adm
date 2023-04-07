// ignore_for_file: prefer_const_constructors

import 'package:easyflow/layers/modules/home/home_page.dart';
import 'package:easyflow/layers/modules/initial/initial_binding.dart';
import 'package:easyflow/layers/modules/initial/initial_page.dart';
import 'package:easyflow/layers/modules/login/login_binding.dart';
import 'package:easyflow/layers/modules/login/login_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
part './app_routes.dart';

abstract class AppPages {
  static const initialRoute = Routes.INITIAL_PAGE;
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
      name: Routes.INITIAL_PAGE,
      page: () => InitialPage(),
      binding: InitialBinding(),
    ),
  ];
}
