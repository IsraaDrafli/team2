import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:team2/data.dart';

class ScreenThree2 extends StatelessWidget {
  const ScreenThree2({super.key});

  @override
  Widget build(BuildContext context) {
    final widtt = MediaQuery.of(context).size.width;
    final high = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: mygreen,
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 16, top: 16, bottom: 16, right: 25),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      size: 30,
                      Icons.arrow_back,
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
      
                  Expanded(
                    child: Text(
                      textAlign: TextAlign.center,
                      'Your health',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 40,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(bottom: 0),
                height: high / 1.2,
                width: double.infinity,
                //  color: Colors.white,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(80), // Top-left radius added
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 30),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(height: 70),
                        Text(
                          'Weight',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                            fontSize: 17,
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: '   eg: 63.1 Kg',
                            hintStyle: GoogleFonts.poppins(
                              color: Color.fromRGBO(149, 149, 149, 1),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(height: 50),
                        Text(
                          'Height',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                            fontSize: 17,
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: '   166 Cm',
                            hintStyle: GoogleFonts.poppins(
                              color: Color.fromRGBO(149, 149, 149, 1),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(height: 50),
                        Text(
                          'Age',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                            fontSize: 17,
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: '   eg:19',
                            hintStyle: GoogleFonts.poppins(
                              color: Color.fromRGBO(149, 149, 149, 1),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(height: 50),
                        Text(
                          'Your current health condition',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                            fontSize: 17,
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: '   Type here',
                            hintStyle: GoogleFonts.poppins(
                              color: Color.fromRGBO(149, 149, 149, 1),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(height: 50),
                        Text(
                          'Your Goal',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                            fontSize: 17,
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: '   Type here',
                            hintStyle: GoogleFonts.poppins(
                              color: Color.fromRGBO(149, 149, 149, 1),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(height: 50),
                        SizedBox(
                          width: widtt,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/nav');
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              alignment: Alignment.center,
                              backgroundColor: Colors.black,
                            ),
                            child: Text(
                              'Done',
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 30),
                      ],
                    ),
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
