import 'package:flutter/material.dart';
import 'package:team2/Screen8.dart';
import 'package:team2/data.dart';
import 'package:team2/screen1.dart';
import 'package:team2/screen3.dart';
import 'package:team2/screen32.dart';
import 'package:team2/screen4.dart';
import 'package:team2/screen6.dart';
import 'package:team2/screen7.dart';
import 'screen2.dart';
import 'screen5.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'team2',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => MyHomePage(),
        '/two': (context) => ScreenTWO(),
        '/three': (context) => ScreenThree(),
        '/three2': (context) => ScreenThree2(),
        '/four': (context) => HomeScreen(),
        '/five': (context) => ScreenFive(),
        '/six': (context) => Greeksalad(),
        '/seven': (context) => Screenseven(),
        '/eight': (context) => ScreenEight(),
        '/nav': (context) => MainScreen(),
      },
    );
  }
}

/**/
