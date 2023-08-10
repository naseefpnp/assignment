import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:practice_application/shoping.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class SplashCart extends StatefulWidget {
  const SplashCart({super.key});

  @override
  State<SplashCart> createState() => _SplashCartState();
}

class _SplashCartState extends State<SplashCart> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => Shoping_page()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset("assets/animm/cartanime.json", fit: BoxFit.fill),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AnimatedTextKit(
                animatedTexts: [
                  TyperAnimatedText(
                    "de - cart".toUpperCase(),
                    textStyle: GoogleFonts.satisfy(
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                    speed: const Duration(milliseconds: 500),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: SplashCart(),
    debugShowCheckedModeBanner: false,
  ));
}
