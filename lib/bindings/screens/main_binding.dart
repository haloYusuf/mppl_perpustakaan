import 'package:get/get.dart';
import 'package:mppl_perpustakaan/controllers/screens/main_controller.dart';

class MainBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => MainController());
  }
}