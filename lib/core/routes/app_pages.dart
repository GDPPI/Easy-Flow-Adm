// ignore_for_file: prefer_const_constructors

import 'package:easyflow/layers/modules/home/home_page.dart';
import 'package:easyflow/layers/modules/login/login_binding.dart';
import 'package:easyflow/layers/modules/login/login_page.dart';
import 'package:easyflow/layers/modules/representative/add_representative_page.dart';
import 'package:easyflow/layers/modules/representative/representative_binding.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
part './app_routes.dart';

abstract class AppPages {
  static const initialRoute = Routes.ADD_REPRESENTATIVE;
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
      name: Routes.ADD_REPRESENTATIVE,
      page: () => AddRepresentativePage(),
      binding: RepresentativeBinding(),
    ),
  ];
}
