import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import '../utility/constants.dart';
import 'first_page.dart';
import 'second_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const String path = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Nested modal bottom sheet with GetX'),
      ),
      body: const Center(
        child: Text(
          '＋ボタンを押して\nモーダルボトムシートを立ち上げてください。',
          textAlign: TextAlign.center,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.bottomSheet(
            settings: const RouteSettings(name: FirstPage.path),
            Navigator(
              key: Get.nestedKey(Constants.nestedModalBottomSheetKey),
              initialRoute: FirstPage.path,
              onGenerateRoute: (settings) {
                switch (settings.name) {
                  case FirstPage.path:
                    return GetPageRoute(
                      routeName: FirstPage.path,
                      page: () => const FirstPage(),
                    );
                  case SecondPage.path:
                    return GetPageRoute(
                      routeName: SecondPage.path,
                      page: () => const SecondPage(),
                    );
                  default:
                    return null;
                }
              },
            ),
          );
        },
        tooltip: 'モーダルボトムシートを立ち上げる',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
