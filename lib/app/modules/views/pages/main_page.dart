import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mppl_perpustakaan/app/utils/constants.dart';
import '../../controllers/pages/main_controller.dart';
import '../screens/borrow_screen.dart';
import '../screens/home_screen.dart';
import '../screens/profile_screen.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final MainController mainController = Get.find();
    final listPage = [
      const HomeScreen(),
      const BorrowScreen(),
      const ProfileScreen(),
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
