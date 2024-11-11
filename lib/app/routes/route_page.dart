import 'package:get/get.dart';
import 'package:mppl_perpustakaan/app/routes/route_name.dart';

import '../modules/bindings/main_binding.dart';
import '../modules/bindings/splash_binding.dart';
import '../modules/views/pages/main_page.dart';
import '../modules/views/pages/splash_page.dart';

class RoutePage{
  static List<GetPage<dynamic>> routes = [
    GetPage(
      name: RouteName.splash,
      page: () => const SplashPage(),
      binding: SplashBinding(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: RouteName.main,
      page: () => const MainPage(),
      binding: MainBinding(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 1000),
    ),
  ];
}