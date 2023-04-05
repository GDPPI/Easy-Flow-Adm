// ignore_for_file: prefer_const_constructors

import 'package:easyflow/layers/modules/equipment/equipments_binding.dart';
import 'package:easyflow/layers/modules/equipment/pages/equipment_requests_page.dart';
import 'package:easyflow/layers/modules/home/home_page.dart';
import 'package:easyflow/layers/modules/login/login_binding.dart';
import 'package:easyflow/layers/modules/login/login_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
part './app_routes.dart';

abstract class AppPages {
  static const initialRoute = Routes.EQUIPMENT_REQUESTS;
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
      name: Routes.EQUIPMENT_REQUESTS,
      page: () => EquipmentRequestsPage(),
      binding: EquipmentsBinding(),
    ),
  ];
}
