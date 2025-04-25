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
    SavedOrder(),
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

class SavedOrder extends StatelessWidget {
  const SavedOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                icon: Icon(Icons.arrow_back, size: 32),
                onPressed: () {
                  Navigator.pop(context);
                },
                color: Colors.black,
              ),
            ),
            Center(child: Text('Saved order')),
          ],
        ),
      ),
    );
  }
}
