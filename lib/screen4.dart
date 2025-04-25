import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:team2/data.dart';

class HomeController extends GetxController {
  var selectedIndex = 0.obs;
  var sidebarSelectedIndex = 2.obs;

  void BottomTap(int index) => selectedIndex.value = index;
  void SidebarTap(int index) => sidebarSelectedIndex.value = index;
}

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    final wid = MediaQuery.of(context).size.width;
    final hit = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Row(
              children: [
                Container(
                  width: wid * 0.2,
                  color: Color.fromRGBO(32, 127, 14, 1),
                  child: Column(
                    children: [
                      SizedBox(height: 30),
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage("Images/p.jpg"),
                      ),
                      Spacer(),
                      SidebarItem(title: "Smoothies", index: 0),
                      SidebarItem(title: "Toasts", index: 1),
                      SidebarItem(title: "Salads", index: 2),
                      SidebarItem(title: "Granola Bowls", index: 3),
                      Spacer(),
                      Icon(Icons.more_vert, color: Colors.white),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
      
                Expanded(
                  child: SingleChildScrollView(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 40),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Hi user,",
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SearchBox(),
                          ],
                        ),
      
                        SizedBox(height: 20),
                        Text(
                          "Popular",
                          style: GoogleFonts.inter(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              PopularCard(
                                name: "Chocolate Fruit Oats",
                                calories: "405 cal",
                                imagePath: "Images/kiwi.png",
                              ),
                              SizedBox(width: 10),
                              PopularCard(
                                name: "Protein Rice Medley",
                                calories: "510 cal",
                                imagePath: "Images/rice.png",
                              ),
                              SizedBox(width: 10),
                              PopularCard(
                                name: "Choco Berry",
                                calories: "420 cal",
                                imagePath: "Images/chocolat.png",
                              ),
                              SizedBox(width: 10),
                              PopularCard(
                                name: "Tuna Vegetable Rice",
                                calories: "525",
                                imagePath: "Images/rice2.png",
                              ),
                              SizedBox(width: 10),
                              PopularCard(
                                name: "Caesar Salad",
                                calories: "475",
                                imagePath: "Images/cesar.png",
                              ),
                              SizedBox(width: 10),
                              PopularCard(
                                name: "Avocado Tofu Grain",
                                calories: "508",
                                imagePath: "Images/avocad.png",
                              ),
                            ],
                          ),
                        ),
      
                        SizedBox(height: 20),
                        Text(
                          "Our salads",
                          style: GoogleFonts.inter(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        SaladCard(
                          title: "Vegetable Salads",
                          description:
                              "These salads are refreshing, nutritious, and customizable.",
                          imagePath: "Images/garden.png",
                        ),
                        SaladCard(
                          title: "Protein-based Salads",
                          description:
                              "These provide protein and can be customized with herbs, nuts.",
                          imagePath: "Images/chicken.png",
                        ),
                        SizedBox(height: 100),
                      ],
                    ),
                  ),
                ),
              ],
            ),
      
            Positioned(
              bottom: 20,
              left: 0,
              right: 0,
              child: Align(
                alignment: AlignmentDirectional(0.5, 0.5),
                child: Container(
                  width: wid * 0.68,
                  height: hit * 0.079,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: mygreen,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      NavIcon(icon: Icons.home, index: 0),
                      NavIcon(icon: Icons.shopping_cart, index: 1),
                      NavIcon(icon: Icons.menu, index: 2),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      padding: EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: mygreen2,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
      ),
      child: TextField(
        decoration: InputDecoration(
          hintStyle: GoogleFonts.poppins(
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
          hintText: "Search...",
          border: InputBorder.none,
          icon: Icon(Icons.search, color: Colors.grey),
        ),
      ),
    );
  }
}

class SidebarItem extends StatelessWidget {
  final title;
  final index;

  const SidebarItem({this.title, this.index});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    return Obx(() {
      final isSelected = controller.sidebarSelectedIndex.value == index;
      return GestureDetector(
        onTap: () => controller.SidebarTap(index),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: RotatedBox(
            quarterTurns: -1,
            child: Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: isSelected ? FontWeight.w700 : FontWeight.w400,
                color:
                    isSelected ? Colors.white : Color.fromRGBO(80, 77, 77, 1),
              ),
            ),
          ),
        ),
      );
    });
  }
}

class NavIcon extends StatelessWidget {
  final icon;
  final index;

  const NavIcon({this.icon, this.index});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    return Obx(
      () => GestureDetector(
        onTap: () => controller.BottomTap(index),
        child: Icon(
          icon,
          color:
              controller.selectedIndex.value == index
                  ? Colors.black
                  : Colors.white,
          size: 28,
        ),
      ),
    );
  }
}

class PopularCard extends StatelessWidget {
  final name;
  final calories;
  final imagePath;

  PopularCard({this.name, this.calories, this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 160,
      margin: EdgeInsets.symmetric(vertical: 20),
      padding: EdgeInsets.only(left: 10, right: 10, top: 50),
      decoration: BoxDecoration(
        color: mygreen2,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(color: Color.fromRGBO(212, 247, 197, 1), blurRadius: 1),
        ],
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Column(
            children: [
              SizedBox(height: 40),
              Text(
                name,
                style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                "Total Calories: $calories",
                style: GoogleFonts.poppins(fontSize: 12, color: Colors.grey),
              ),
            ],
          ),
          Positioned(
            top: -70,
            left: 20,
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(imagePath),
              backgroundColor: Colors.transparent,
            ),
          ),
        ],
      ),
    );
  }
}

class SaladCard extends StatelessWidget {
  final title;
  final description;
  final imagePath;

  SaladCard({this.title, this.description, this.imagePath});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/five');
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        padding: EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 10),
        decoration: BoxDecoration(
          color: mygreen2,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(color: Color.fromARGB(181, 179, 207, 153), blurRadius: 1),
          ],
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Row(
              children: [
                SizedBox(width: 90),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 4),
                      Text(
                        description,
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: -30,
              left: -20,
              child: CircleAvatar(
                radius: 51,
                backgroundImage: AssetImage(imagePath),
                backgroundColor: Colors.transparent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
