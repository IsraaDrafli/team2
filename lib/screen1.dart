import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'Images/mm.png', // <-- Replace with your image
                fit: BoxFit.cover,
              ),
            ),
            Column(
              children: [
                Expanded(
                  child: Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 8),
                      width: 180,
                      height: 180,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('Images/fuelup.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(28),
                    width: double.infinity,

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Healthy food,",
                          style: GoogleFonts.poppins(
                            fontSize: 37,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "JUST for you.",
                          style: GoogleFonts.poppins(
                            fontSize: 37,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.center,
                        ),

                        SizedBox(height: 50),
                        SizedBox(
                          width: 370, // Full width
                          height: 56, // Custom height
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/two');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color.fromARGB(
                                255,
                                72,
                                135,
                                43,
                              ), // Black background
                              foregroundColor: Colors.white, // White text
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  18,
                                ), // Circular border radius of 10
                              ),
                            ),

                            child: Text(
                              "Get started",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w400,
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
          ],
        ),
      ),
    );
  }
}
