import 'package:flutter/material.dart';
import 'package:practice_application/SignUp.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'Contacts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool passvisible = true;
  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Login",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              "Welcome Back ! Login With Your Details",
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
              child: ElevatedButton(
                  onPressed: () {
              final valid = formkey.currentState!.validate();
              if(valid){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Contacts()));
              }else{
                Fluttertoast.showToast(
                    msg: "invalid email Id or password",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    fontSize: 16.0);
              }
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.green, // Background color
                      onPrimary: Colors.white, // Text color
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                  child: Text("Login")),
            ),
           TextButton(onPressed: (){
             Navigator.of(context).push(MaterialPageRoute(builder: (context)=> SignUp()));
           },
               style: TextButton.styleFrom(
                primary: Colors.black38,
                 padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                 textStyle: TextStyle(fontSize: 10,fontWeight: FontWeight.normal)
               ),
               child: Text("Doesnt have an account? Signup"))
          ],
        ),
      ),
    );
  }
}
