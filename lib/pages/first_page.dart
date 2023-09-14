import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/utils.dart';

import '../utility/constants.dart';
import 'second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(Icons.close),
        ),
      ),
      body: Container(
        color: Colors.red,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            const SizedBox(height: 20),
            Text(
              'FirstPage',
              style: context.theme.textTheme.titleLarge?.copyWith(
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.to(
                  const SecondPage(),
                  id: Constants.nestedModalBottomSheetKey,
                );
              },
              child: Text(
                'Go to SecondPage',
                style: context.theme.textTheme.labelLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
