import 'package:flutter/material.dart';
import 'package:practice_application/login.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'Contacts.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool passvisible = true;
  bool passvisible2 = true;
  var formkey = GlobalKey<FormState>();
  String? passcode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "Sign Up",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Text(
            "Create an Account.Its Free",
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.normal,
              color: Colors.black38,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Emain Id",
                prefixIcon: Icon(Icons.email),
                labelText: "Email Id",
              ),
              validator: (emailId) {
                if (emailId!.isEmpty || !emailId.contains("@gmail.com")) {
                  return "invalid Email Id";
                } else {
                  return null;
                }
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              obscureText: passvisible,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "PassWord",
                  labelText: "PassWord",
                  prefixIcon: Icon(Icons.password),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          if (passvisible == true) {
                            passvisible = false;
                          } else {
                            passvisible = true;
                          }
                        });
                      },
                      icon: Icon(passvisible == true
                          ? Icons.visibility_off
                          : Icons.visibility))),
              validator: (password) {
                passcode = password;
                if (password!.isEmpty || password.length < 6) {
                  return "password must contains 6 letters";
                } else {
                  return null;
                }
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              obscureText: passvisible2,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Confirm Password",
                  labelText: "PassWord",
                  prefixIcon: Icon(Icons.password),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          if (passvisible2 == true) {
                            passvisible2 = false;
                          } else {
                            passvisible2 = true;
                          }
                        });
                      },
                      icon: Icon(passvisible2 == true
                          ? Icons.visibility_off
                          : Icons.visibility))),
              validator: (password2) {
                if (password2!.isEmpty || password2 != passcode) {
                  return "doesnt match with your password";
                } else {
                  return null;
                }
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  final valid = formkey.currentState!.validate();
                  if(valid){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Contacts()));
                  }else{
                   ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Wrong")));
                  }
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.green, // Background color
                    onPrimary: Colors.white, // Text color
                    padding:
                    EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                child: Text("Sign Up")),
          ),
          TextButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Login()));
          },
              style: TextButton.styleFrom(
                  primary: Colors.black38,
                  padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                  textStyle: TextStyle(fontSize: 10,fontWeight: FontWeight.normal)
              ),
              child: Text("already have an account? login"))

        ]),
      ),
    );
  }
}
