import 'package:gaes_app_portal/controller/routes_name.dart';
import 'package:get/get.dart';
// import 'package:flutter/material.dart';
import '../view/splash_page.dart';

class AppPage {
  AppPage._();
  static const intials = Routes.splash_view;

  static final pages = [
    GetPage(name: Routes.splash_view, page: () => SplashView())
  ];
}