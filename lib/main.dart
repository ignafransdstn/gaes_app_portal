import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:gaes_app_portal/controller/screen_routes.dart';
import 'package:gaes_app_portal/view/dashboard_page.dart';
import 'package:gaes_app_portal/view/services_page.dart';
import 'package:gaes_app_portal/view/splash_page.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GAES Portal',
      getPages: AppPage.pages,
      home: const SplashView(),
    );
  }
}

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodySection(),
      bottomNavigationBar: mainMenu(),
    );
  }

  bodySection() {
    switch (index) {
      case 0:
        return const ServicesView();
      default:
        return const DashboardView();
    }
  }

  mainMenu() {
    return BottomNavyBar(
      selectedIndex: index,
      showElevation: true,
      items: [
        BottomNavyBarItem(
          icon: const Icon(Ionicons.grid_outline),
          title: const FittedBox(
            fit: BoxFit.fitWidth,
            child: Text('SERVICES'),
          ),
          activeColor: const Color.fromARGB(255, 53, 107, 223),
          textAlign: TextAlign.justify,
        ),
        BottomNavyBarItem(
          icon: const Icon(Icons.dashboard_rounded),
          title: const FittedBox(
            fit: BoxFit.fitWidth,
            child: Text("DASHBOARD"),
          ),
          activeColor: const Color.fromARGB(255, 53, 107, 223),
          textAlign: TextAlign.justify,
        ),
      ],
      onItemSelected: (index) => setState(() => this.index = index),
    );
  }
}
