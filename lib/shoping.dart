import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Shoping_page extends StatefulWidget {
  const Shoping_page({super.key});

  @override
  State<Shoping_page> createState() => _Shoping_pageState();
}

class _Shoping_pageState extends State<Shoping_page> {
  var images = [
    "assets/images/Accesseries/bag.jpg",
    "assets/images/Accesseries/Headphone.jpg",
    "assets/images/Accesseries/Jewellery.jpg",
    "assets/images/Accesseries/Laptop.jpg",
    "assets/images/Accesseries/Mobilephone.jpg",
    "assets/images/Accesseries/Perfume.jpg"
  ];
  var name = [
    "BAG",
    "HEAD PHONE",
    "JEWELLERY",
    "LAPTOP",
    "MOBILE PHONE",
    "PERFUME"
  ];
  var text = [
    "New arrivals",
    "New arrivals",
    "New arrivals",
    "New arrivals",
    "New arrivals",
    "New arrivals"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
        "NEW CART",
        style: GoogleFonts.playfairDisplay(
        fontWeight: FontWeight.normal,
        textStyle: TextStyle(),
    ),),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          ),
          PopupMenuButton(itemBuilder: (context){
           return[
             PopupMenuItem(child: Text("Cart")),
             PopupMenuItem(child: Text("Likes")),
             PopupMenuItem(child: Text("Profile")),
             PopupMenuItem(child: Text("Settings")),
           ];

          })

        ],
      ),
      body: GridView.custom(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          childrenDelegate: SliverChildListDelegate(List.generate(
              6,
              (index) => Card(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 130,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(images[index]),
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(name[index]),
                            style: TextButton.styleFrom(
                                primary: Colors.black,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 8),
                                textStyle: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 4.0),
                            child: Text(text[index],style: TextStyle(
                              color: Colors.orange,
                              fontWeight: FontWeight.normal,
                              fontSize: 10
                            ),),
                          )
                        ],
                      ),
                    ),
                  )))),
    );
  }
}


void main() {
  runApp(MaterialApp(
    home: Shoping_page(),
    debugShowCheckedModeBanner: false,
  ));
}
