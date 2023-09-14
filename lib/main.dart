import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'pages/home_page.dart';
import 'pages/first_page.dart';
import 'pages/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Nested modal bottom sheet with GetX',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      getPages: [
        GetPage(name: HomePage.path, page: () => const HomePage()),
        GetPage(name: FirstPage.path, page: () => const FirstPage()),
        GetPage(name: SecondPage.path, page: () => const SecondPage()),
      ],
      initialRoute: HomePage.path,
    );
  }
}
