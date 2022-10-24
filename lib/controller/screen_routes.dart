import 'package:gaes_app_portal/controller/routes_name.dart';
import 'package:gaes_app_portal/view/dashboard_page.dart';
import 'package:gaes_app_portal/view/services_page.dart';
import 'package:get/get.dart';
// import 'package:flutter/material.dart';
import '../view/splash_page.dart';

class AppPage {
  AppPage._();
  static const intials = Routes.splash_view;

  static final pages = [
    GetPage(
      name: Routes.splash_view,
      page: () => const SplashView(),
    ),
    GetPage(
      name: Routes.services_view,
      page: () => const ServicesView(),
    ),
    GetPage(
      name: Routes.dashboard_view,
      page: () => const DashboardView(),
    ),
  ];
}
