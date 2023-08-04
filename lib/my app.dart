import 'package:flutter/material.dart';

import 'SignUp.dart';
import 'login.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hello There!",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.black,

              ),),
            Text("Autamatic Identity Verification Which Enable You To Verify Your Identity",
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.normal,
                color: Colors.black)),
            Image.asset("assets/images/img.png"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Login()));
              },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green, // Background color
                    onPrimary: Colors.white, // Text color
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),child: Text("login")),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignUp()));
              },
                style: ElevatedButton.styleFrom(
                    primary: Colors.green, // Background color
                    onPrimary: Colors.white, // Text color
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    )),child: Text("Sign Up")),
            ),


          ],
        ),
      ),
    );
  }
}

