import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:team2/data.dart';

import 'screen4.dart';

class ScreenFive extends StatelessWidget {
  const ScreenFive({super.key});
  @override
  Widget build(BuildContext context) {
    final widt = MediaQuery.of(context).size.width;
    final hi = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'vegetable salades',
                  style: GoogleFonts.inter(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(width: widt, height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Special For You',
                      style: GoogleFonts.inter(
                        color: mygreen,
                        fontSize: 32,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 10.0,
                  right: 16,
                  top: 5,
                  bottom: 30,
                ),
                child: Container(
                  height: 52,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Search for your plate here...',
                      hintStyle: GoogleFonts.poppins(
                        color: Color.fromRGBO(80, 77, 77, 1),
                        fontWeight: FontWeight.w400,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12.0, right: 12),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/six');
                          },
                          child: Container(
                            height: hi * 0.3,
                            width: widt * 0.95,
                            child: Row(
                              children: [
                                Image.asset('Images/salade.png.png'),
      
                                SizedBox(width: 15),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Greek Salad',
                                      style: GoogleFonts.poppins(
                                        fontSize: 18,
      
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      maxLines: 2,
                                      '~ 425 Kcal',
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(80, 77, 77, 1),
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.add),
                                  color: Colors.black,
                                  iconSize: 25,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          height: hi * 0.3,
                          width: widt * 0.95,
                          child: Row(
                            children: [
                              Image.asset('Images/image (1).png'),
      
                              SizedBox(height: 50, width: 15),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Garden Salad',
                                    style: GoogleFonts.poppins(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    '~ 425 Kcal',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(80, 77, 77, 1),
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.add),
                                color: Colors.black,
                                iconSize: 25,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          height: hi * 0.3,
                          width: widt * 0.95,
                          child: Row(
                            children: [
                              Image.asset('Images/image (2).png'),
      
                              SizedBox(height: 50, width: 15),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Caprese Saad',
                                    style: GoogleFonts.poppins(
                                      fontSize: 18,
      
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    maxLines: 2,
                                    '~ 425 Kcal',
                                    style: GoogleFonts.poppins(
                                      fontSize: 15,
                                      color: Color.fromRGBO(80, 77, 77, 1),
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.add),
                                color: Colors.black,
                                iconSize: 25,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Image.asset('Images/bell-fill.png'),
                    iconSize: 40,
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Image.asset('Images/cart.png'),
                    onPressed: () {
                      Navigator.pushNamed(context, '/nav');
                    },
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/eight');
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      backgroundColor: Colors.black,
                    ),
                    child: Text(
                      'Check Out',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
