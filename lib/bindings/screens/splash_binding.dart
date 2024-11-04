import 'package:get/get.dart';
import 'package:mppl_perpustakaan/controllers/screens/splash_controller.dart';

class SplashBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => SplashController());
  }
}