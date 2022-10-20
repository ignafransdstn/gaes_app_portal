import 'package:flutter/material.dart';
import 'package:gaes_app_portal/main.dart';
import 'package:get/get.dart';

class SplashView extends GetView<SplashView> {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'assets/images/Picture1.png',
              width: 200,
              height: 200,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MainView(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue[900],
              textStyle: const TextStyle(fontWeight: FontWeight.bold),
            ),
            child: const Text("OPEN MENU"),
          ),
        ],
      ),
    );
  }
}
