import 'package:get/get.dart';
import 'package:mppl_perpustakaan/bindings/screens/main_binding.dart';
import 'package:mppl_perpustakaan/bindings/screens/splash_binding.dart';
import 'package:mppl_perpustakaan/routes/route_name.dart';
import 'package:mppl_perpustakaan/views/screens/main_screen.dart';
import 'package:mppl_perpustakaan/views/screens/splash_screen.dart';

class RoutePage{
  static List<GetPage<dynamic>> routes = [
    GetPage(
      name: RouteName.splash,
      page: () => const SplashScreen(),
      binding: SplashBinding(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: RouteName.main,
      page: () => const MainScreen(),
      binding: MainBinding(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 1000),
    ),
  ];
}