import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mppl_perpustakaan/routes/route_name.dart';
import 'package:mppl_perpustakaan/routes/route_page.dart';

import 'constant/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Perpustakaanku',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: Constants.fontNamePoppins,
      ),
      getPages: RoutePage.routes,
      initialRoute: RouteName.splash,
    );
  }
}
