import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:team2/data.dart';

import 'screen4.dart';

class Screenseven extends StatelessWidget {
  const Screenseven({super.key});
  @override
  Widget build(BuildContext context) {
    final widt = MediaQuery.of(context).size.width;
    final hi = MediaQuery.of(context).size.height;
    final CounterController controller1 = Get.put(
      CounterController(),
      tag: 'count1',
    );
    final CounterController controller2 = Get.put(
      CounterController(),
      tag: 'count2',
    );
    return SafeArea(
      child: Scaffold(
        backgroundColor: mygreen2,
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 16, left: 16, top: 16),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {
                        Get.find<HomeController>().BottomTap(0);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: const Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        'Your food cart',
                        style: GoogleFonts.inter(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Column(
                      children: [
                        Obx(
                          () => Cart(
                            img: 'Images/hamra.png',
                            title: 'Caprese Salad               ',
                            price: '550 DA',
                            quantity: "${controller1.quantity.value.toString()}",
                            onpressedINC: () {
                              controller1.increment();
                            },
                            onpressedDEC: () {
                              controller1.decrement();
                            },
                          ),
                        ),
                        SizedBox(height: 15),
                        Obx(
                          () => Cart(
                            img: 'Images/image.png',
                            title: 'Protein-baised salad',
                            quantity: "${controller2.quantity.value.toString()}",
                            price: '900 DA',
                            onpressedINC: () {
                              controller2.increment();
                            },
                            onpressedDEC: () {
                              controller2.decrement();
                            },
                          ),
                        ),
                        SizedBox(height: 40),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 10.0,
                            right: 16,
                            top: 5,
                            bottom: 30,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  offset: Offset(0, 6),
                                  blurRadius: 1,
                                  spreadRadius: 1,
                                ),
                              ],
                              borderRadius: BorderRadius.circular(15),
                            ),
                            height: 55,
                            child: TextField(
                              textAlignVertical: TextAlignVertical.center,
                              decoration: InputDecoration(
                                hintText: 'Enter your code promo',
                                hintStyle: GoogleFonts.poppins(
                                  color: Color.fromRGBO(196, 196, 196, 1),
                                  fontWeight: FontWeight.w700,
                                ),
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.only(left: 30),
                                suffixIcon: Padding(
                                  padding: const EdgeInsets.only(right: 15.0),
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      minimumSize: Size(5, 1),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      backgroundColor: mygreen,
                                    ),
                                    child: Text(
                                      "Apply",
                                      style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: widt / 1.1,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                offset: Offset(0, 6),
                                blurRadius: 1,
                                spreadRadius: 1,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              children: [
                                total(text: "Cart tatal", tota: "5000 DA"),
                                SizedBox(height: 08),
                                total(text: "Tax", tota: "150 DA"),
                                SizedBox(height: 08),
                                total(text: "Delivery", tota: "200 DA"),
                                SizedBox(height: 08),
                                total(text: "Promo Discount", tota: "-0.00 DA"),
                                SizedBox(height: 08),
                                Divider(
                                  color: const Color.fromARGB(255, 21, 20, 20),
                                  thickness: 1,
                                ),
                                total(text: "Subtotal", tota: "5350 DA"),
                                SizedBox(height: 08),
                                SizedBox(
                                  width: widt / 1.01,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.pushNamed(context, '/eight');
                                    },
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      alignment: Alignment.center,
                                      backgroundColor: Colors.black,
                                    ),
                                    child: Text(
                                      'Proceed to checkout',
                                      style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 100),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 0,
              right: 0,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: widt * 0.68,
                  height: hi * 0.079,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(72, 135, 43, 1),
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

class Cart extends StatelessWidget {
  final String quantity;
  final String img;
  final String title;
  final String price;
  final VoidCallback onpressedINC;
  final VoidCallback onpressedDEC;

  Cart({
    super.key,
    required this.img,
    required this.title,
    required this.quantity,
    required this.price,
    required this.onpressedINC,
    required this.onpressedDEC,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            offset: Offset(0, 6),
            blurRadius: 1,
            spreadRadius: 1,
          ),
        ],
      ),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 10.0, bottom: 10),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                border: Border.all(width: 1, color: Colors.grey),
              ),
              child: Column(
                children: [
                  IconButton(
                    onPressed: onpressedINC,
                    icon: Icon(Icons.add),
                    color: const Color.fromRGBO(80, 77, 77, 1),
                    iconSize: 20,
                  ),
                  Text(quantity, style: TextStyle(fontSize: 20)),
                  IconButton(
                    onPressed: onpressedDEC,
                    icon: Icon(Icons.remove),
                    color: const Color.fromRGBO(80, 77, 77, 1),
                    iconSize: 20,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 10),

          Flexible(flex: 20, child: Image.asset(img)),
          SizedBox(width: 10),
          Flexible(
            flex: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  price,
                  style: GoogleFonts.poppins(
                    color: Color.fromRGBO(196, 196, 196, 1),
                    fontWeight: FontWeight.w700,
                  ),
                ),

                Text(
                  "Toppings",
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          IconButton(
            icon: Image.asset('Images/x-circle.png'),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class total extends StatelessWidget {
  final String text;
  final String tota;

  const total({super.key, required this.text, required this.tota});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
        ),
        Spacer(),
        Text(
          tota,
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}

class CounterController extends GetxController {
  var quantity = 0.obs;
  void increment() {
    quantity.value++;
  }

  void decrement() {
    if (quantity.value > 0) {
      quantity.value--;
    }
  }
}
