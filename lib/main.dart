import 'package:easyflow/core/routes/app_pages.dart';
import 'package:easyflow/core/theme/app_theme.dart';
import 'package:easyflow/core/utils/scroll_behavior.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
    WidgetsFlutterBinding.ensureInitialized();
  runApp(
    GetMaterialApp(title: 'Easy flow ADM',
      scrollBehavior: MyCustomScrollBehavior(),
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.initialRoute,
      theme: appThemeData,
      getPages: AppPages.pages,
    ),
  );
}
