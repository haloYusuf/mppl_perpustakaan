import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mppl_perpustakaan/constant/constants.dart';
import 'package:mppl_perpustakaan/controllers/screens/main_controller.dart';

import '../pages/borrow_page.dart';
import '../pages/home_page.dart';
import '../pages/profile_page.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final MainController mainController = Get.find();
    final listPage = [
      const HomePage(),
      const BorrowPage(),
      const ProfilePage(),
    ];

    return Scaffold(
      body: Obx(() => SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
            20,
            30,
            20,
            0,
          ),
          child: listPage[mainController.currentIndex.value],
        ),
      )),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
        currentIndex: mainController.currentIndex.value,
        onTap: mainController.changePage,
        selectedItemColor: Constants.colorGreen,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book_rounded),
            label: 'Pinjam',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_rounded),
            label: 'Profile',
          ),
        ],
      )),
    );
  }
}
