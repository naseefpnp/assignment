import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Contacts extends StatefulWidget {
  const Contacts({super.key});

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Welcome"),
        ),
        body: Card(
          child: ListView(
            children: [
              Center(
                child: Text("Your Contacts",
                  style: GoogleFonts.satisfy(fontSize: 40,color: Colors.blue),),
              ),
              Card(
                color: Colors.grey,
                child: ListTile(
                  title: Text("Midhun"),
                  subtitle:Text ("\+ 91 9544647457"),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/midhum.jpg"),
                  ),
                  trailing: Icon(Icons.phone),
                ),
              ),
            ],
          ),
        )
    );
  }
}
