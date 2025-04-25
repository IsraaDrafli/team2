import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:team2/screen4.dart';
import 'package:team2/screen7.dart';

final Color mygreen = Color.fromRGBO(72, 135, 43, 1);
final Color mygreen2 = Color.fromRGBO(212, 247, 197, 1);

class MainScreen extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());

  final List<Widget> pages = [
    HomeScreen(),
    Screenseven(),
    Center(child: Text("Profile Page")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Stack(
        children: [Obx(() => pages[controller.selectedIndex.value]), NavIcon()],
      ),
    );
  }
}
