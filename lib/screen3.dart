import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:team2/data.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    final widtt = MediaQuery.of(context).size.width;
    final high = MediaQuery.of(context).size.height;
    return
      
       Scaffold(
        backgroundColor: mygreen,
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 16,
                top: 16,
                bottom: 16,
                right: 25,
              ),
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
                      'Sign Up',
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
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(80),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 30),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        SizedBox(height: 70),
                        Text(
                          'First name',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                            fontSize: 17,
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: '   First Name',
                            hintStyle: GoogleFonts.poppins(
                              color: Color.fromRGBO(149, 149, 149, 1),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(height: 50),
                        Text(
                          'Last name',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                            fontSize: 17,
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: '   Last Name',
                            hintStyle: GoogleFonts.poppins(
                              color: Color.fromRGBO(149, 149, 149, 1),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(height: 50),
                        Text(
                          'Email or Phone Number',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                            fontSize: 17,
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: '   eg:username@gmail.com',
                            hintStyle: GoogleFonts.poppins(
                              color: Color.fromRGBO(149, 149, 149, 1),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(height: 50),
                        Text(
                          'Password',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                            fontSize: 17,
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: '   ******',
                            hintStyle: GoogleFonts.poppins(
                              color: Color.fromRGBO(149, 149, 149, 1),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(height: 50),
                        Text(
                          'Confirm Your Password',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                            fontSize: 17,
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: '   ******',
                            hintStyle: GoogleFonts.poppins(
                              color: Color.fromRGBO(149, 149, 149, 1),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(height: 50),
                        SizedBox(
                          width: widtt / 1.01,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/three2');
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              alignment: Alignment.center,
                              backgroundColor: Colors.black,
                            ),
                            child: Text(
                              'Next',
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
     
    );
  }
}
