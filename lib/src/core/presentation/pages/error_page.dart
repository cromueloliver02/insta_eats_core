import 'package:flutter/material.dart';

import 'package:insta_eats_core/src/config/flavor/app_flavor.dart';
import 'package:insta_eats_core/src/core/presentation/widgets/ite_button.dart';
import 'package:insta_eats_core/src/gen/assets.gen.dart';

class ErrorPage extends StatelessWidget {
  final VoidCallback onGoBack;
  final Exception? exception;

  const ErrorPage({super.key, required this.onGoBack, required this.exception});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              width: 250,
              child: Assets.lottie.pageNotFound.lottie(),
            ),
          ),
          const Text('PAGE NOT FOUND', style: TextStyle(fontSize: 16)),
          const SizedBox(height: 20),
          if (!AppFlavorConfig.flavor.isProduction) ...[
            const SizedBox(height: 10),
            Text(exception.toString()),
            const SizedBox(height: 50),
          ],
          ITEButton(label: 'Go To Home', onPressed: onGoBack),
        ],
      ),
    );
  }
}
