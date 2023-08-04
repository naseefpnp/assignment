import 'dart:async';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

import 'package:practice_application/my%20app.dart';

class SplashApp extends StatefulWidget {
  const SplashApp({super.key});

  @override
  State<SplashApp> createState() => _SplashAppState();
}

class _SplashAppState extends State<SplashApp> {
  @override
  void initState() {
    Timer(Duration(seconds: 4), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => Register()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/MyappSplash2.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset("assets/images/MyApp Logo.png"),
        SizedBox(height: 20), // Adjust the spacing as needed
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Ring.. Ring...",
            style: GoogleFonts.satisfy(fontSize: 40,color: Colors.lightBlueAccent)
          ),
        ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("You can talk",
              style: GoogleFonts.italiana(fontSize: 20,color: Colors.green),),
            )
      ])),
    ]));
  }
}

void main() {
  runApp(MaterialApp(
    home: SplashApp(),
  ));
}
