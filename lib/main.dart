import 'package:flutter/material.dart';
import 'package:flutter_animation_test/home.dart';
import 'package:flutter_animation_test/screen1.dart';
import 'package:get/get.dart';

import 'screen2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Routes.home.toString(),
      getPages: [
        GetPage(name: Routes.home.toString(), page: () => HomeScreen()),
        GetPage(name: Routes.screen1.toString(), page: () => Screen1()),
        GetPage(name: Routes.screen2.toString(), page: () => Screen2())
      ],
    );
  }
}

enum Routes { home, screen1, screen2 }
