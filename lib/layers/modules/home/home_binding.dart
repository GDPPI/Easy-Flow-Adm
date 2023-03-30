import 'package:easyflow/layers/data/provider/home_provider.dart';
import 'package:easyflow/layers/data/repository/home_repository.dart';
import 'package:easyflow/layers/modules/home/home_controller.dart';
import 'package:get/get.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
        () => HomeController(HomeRepository(HomeProvider())));
  }
}
