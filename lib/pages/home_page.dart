import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import '../utility/constants.dart';
import 'first_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
            Navigator(
              key: Get.nestedKey(Constants.nestedModalBottomSheetKey),
              onGenerateRoute: (settings) {
                return MaterialPageRoute<FirstPage>(
                  builder: (context) {
                    return const FirstPage();
                  },
                );
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
