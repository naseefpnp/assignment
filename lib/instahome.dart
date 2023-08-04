
import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(

        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Username",
                  labelText: "Username",
                  prefixIcon: Icon(Icons.people),

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  right: 18, left: 18, top: 18, bottom: 18),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Password",
                  labelText: "Password",
                  prefixIcon: Icon(Icons.people),

                ),
              ),
            ),
            ElevatedButton(onPressed: () {
             
            }, child: Text("Login"))
          ],
        ),
      ),
    );
  }
}


