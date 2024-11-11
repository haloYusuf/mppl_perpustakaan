import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mppl_perpustakaan/app/utils/constants.dart';
import '../../controllers/pages/splash_controller.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    final SplashController splashController = Get.find();

    return Scaffold(
      backgroundColor: Constants.colorWhite,
      body: Center(
        child: Obx(
            () => AnimatedOpacity(
              opacity: splashController.opacity.value,
              duration: const Duration(milliseconds: 1000),
              child: Text(
                'Perpustakaanku',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w500,
                  color: Constants.colorGreen,
                ),
              ),
            ),
        ),
      ),
    );
  }
}
