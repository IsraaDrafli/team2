import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:team2/data.dart';

import 'screen7.dart';

class Greeksalad extends StatelessWidget {
  final CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.only(right: 20, top: 16, bottom: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Positioned(
                top: 20,
                left: 16,
                child: IconButton(
                  icon: Icon(Icons.arrow_back, size: 32),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  color: Colors.black,
                ),
              ),

              Center(
                child: Text(
                  "Greek Salad",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: h * 0.45,
                    width: w * 0.5,

                    child: Image.asset(
                      "Images/screen6img.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: Row(
                          children: [
                            Text(
                              'Protein',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              '7g',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: Color.fromRGBO(196, 196, 196, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 34),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'carbs',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                  ),
                                ),
                                SizedBox(width: 15),
                                Text(
                                  '13g',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    color: Color.fromRGBO(196, 196, 196, 1),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 34),
                      Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: Row(
                          children: [
                            Text(
                              'fats ',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(width: 20),
                            Text(
                              '15g',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: Color.fromRGBO(196, 196, 196, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "1300DA",
                          style: TextStyle(
                            color: mygreen,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Container(
                          decoration: BoxDecoration(
                            color: mygreen,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Obx(
                            () => Row(
                              children: [
                                IconButton(
                                  onPressed: controller.decrement,
                                  icon: Icon(Icons.remove, color: Colors.white),
                                ),
                                Text(
                                  '${controller.quantity.value}',
                                  style: TextStyle(color: Colors.white),
                                ),
                                IconButton(
                                  onPressed: controller.increment,
                                  icon: Icon(Icons.add, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.star),
                        Text(
                          "4.5",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                          ),
                        ),
                        Icon(Icons.water_drop_outlined),
                        Text(
                          "425 KCAL",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                          ),
                        ),
                        Icon(Icons.schedule),
                        Text(
                          "20 min",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Text(
                      "Add toppings:",
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    ToppingsCheckboxes(), // Inserted widget
                    SizedBox(height: 30),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: mygreen,
                          minimumSize: Size(double.infinity, 50),

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          "Add to cart",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ToppingsCheckboxes extends StatefulWidget {
  const ToppingsCheckboxes({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ToppingsCheckboxesState createState() => _ToppingsCheckboxesState();
}

class _ToppingsCheckboxesState extends State<ToppingsCheckboxes> {
  bool beans = false;
  bool nuts = true;
  bool tofu = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: beans,
          onChanged: (val) => setState(() => beans = val!),
        ),
        Text(
          "Beans",
          style: GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w400),
        ),
        Spacer(),
        Checkbox(value: nuts, onChanged: (val) => setState(() => nuts = val!)),
        Text(
          "Nuts",
          style: GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w400),
        ),
        Spacer(),
        Checkbox(value: tofu, onChanged: (val) => setState(() => tofu = val!)),
        Text(
          "Tofu",
          style: GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
