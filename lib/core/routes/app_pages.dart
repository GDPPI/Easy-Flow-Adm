// ignore_for_file: prefer_const_constructors


import 'package:easyflow/layers/modules/equipment/equipment_binding.dart';
import 'package:easyflow/layers/modules/equipment/pages/equipment_page.dart';
import 'package:easyflow/layers/modules/equipment/pages/equipment_add_page.dart';
import 'package:easyflow/layers/modules/equipment/pages/equipment_requests_page.dart';
import 'package:easyflow/layers/modules/home/home_page.dart';
import 'package:easyflow/layers/modules/initial/initial_binding.dart';
import 'package:easyflow/layers/modules/initial/initial_page.dart';
import 'package:easyflow/layers/modules/login/login_binding.dart';
import 'package:easyflow/layers/modules/login/login_page.dart';
import 'package:easyflow/layers/modules/representative/add_representative_page.dart';
import 'package:easyflow/layers/modules/representative/representative_binding.dart';
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
GetPage(
      name: Routes.EQUIPMENT,
      page: () => EquipmentPage(),
      binding: EquipmentBinding(),
    ),
    GetPage(
      name: Routes.EQUIPMENT_ADD,
      page: () => EquipmentAddPage(),
      binding: EquipmentBinding(),
    ),
    GetPage(
      name: Routes.EQUIPMENT_REQUESTS,
      page: () => EquipmentRequestsPage(),
      binding: EquipmentsBinding(),
    ),
    GetPage(
      name: Routes.ADD_REPRESENTATIVE,
      page: () => AddRepresentativePage(),
      binding: RepresentativeBinding(),
    ),

  ];
}
