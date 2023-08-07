import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Contacts extends StatefulWidget {
  const Contacts({super.key});

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  var names = [
    "Midhun",
    "Joyal",
    "Fayis",
    "adhil",
    "faris",
  ];
  var phone = [
    "8129287086",
    "9995138457",
    "9061696458",
    "9539378965",
    "9745743591"
  ];
  var pics = [
    "assets/images/contacts/midhun.jpg",
    "assets/images/contacts/joyal.jpg",
    "assets/images/contacts/fayis.jpg",
    "assets/images/contacts/Adhil.jpg",
    "assets/images/contacts/faris.jpg"
  ];
  var time =[
    "12.12",
    "07.45",
    "05.52",
    "yesterday",
    "sunday"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text("Welcome"),
          actions: [
            Icon(Icons.camera_alt),
            SizedBox(width: 10,),
            Icon(Icons.search),
            SizedBox(width: 10,),
            PopupMenuButton(itemBuilder: (context){
              return[
              PopupMenuItem(child: Text("Settings"),),
                PopupMenuItem(child: Text("Profile"),),
                PopupMenuItem(child: Text("Payments"),),
                PopupMenuItem(child: Text("Broadcast"),),

              ];
            })
          ],
        ),
      body: ListView(
        children: List.generate(5, (index) => Card(
          child: ListTile(

            title: Text(names[index]),
            subtitle: Text("${phone[index]}"),
            leading: CircleAvatar(
              backgroundImage: AssetImage(pics[index]),
            ),
            trailing: Wrap(
              direction: Axis.vertical,
              children: [
              Text(time[index]),
              CircleAvatar(
                backgroundColor: Colors.teal,
               radius: 10,

              )
              ],
            ),
          ),
        ))
      ),
    );
  }
}
