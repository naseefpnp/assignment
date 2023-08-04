import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'instahome.dart';

class insta extends StatefulWidget {
  const insta({super.key});

  @override
  State<insta> createState() => _instaState();
}

class _instaState extends State<insta> {
  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
    Navigator.of(context).pushReplacement(
    MaterialPageRoute(builder:(context) => Loginpage()));
       });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: ShaderMask(
                blendMode: BlendMode.srcIn,
                shaderCallback: (Rect bounds) => LinearGradient(
                  colors: [
                    Colors.pink,
                    Colors.purple,
                    Colors.red,
                    Colors.yellow
                  ],
                  begin: Alignment.topLeft,

                  end: Alignment.bottomRight,
                ).createShader(bounds),
                child:FaIcon(
                  FontAwesomeIcons.instagram,
                  size: 100,
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black38,
    );
  }
}

void main(){
  runApp(MaterialApp(home: insta(),));
}