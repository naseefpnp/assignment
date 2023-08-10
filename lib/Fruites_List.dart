import 'package:flutter/material.dart';

class Fruites extends StatefulWidget {
  @override
  State<Fruites> createState() => _FruitesState();
}

class _FruitesState extends State<Fruites> {
  var fruites = ["Apple", "Avocado", "Banana", "Grapes", "Orange"];
  var unit = ["kg", "kg", "Doz", "pc", "Doz"];
  var prize = ["250", "345", "180", "220", "210"];
  var images = [
    "assets/images/Fruites/Apple.png",
    "assets/images/Fruites/Avacado.png",
    "assets/images/Fruites/Banana.png",
    "assets/images/Fruites/Grapes.png",
    "assets/images/Fruites/Orange.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fruits"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart,
            ),
          ),
        ],
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return Card(
            color: Colors.grey,
            child: ListTile(
              trailing: Container(

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.black,
                ),

                child: TextButton(
                  onPressed: () {

                  },
                  child: Text(
                    'Add to Cart',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              title: Text("Name: ${fruites[index]}"),
              leading: Image.asset(images[index]),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Unit: ${unit[index]}"),
                  Text("Price: \$${prize[index]}"),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          if (index % 1 == 0) {
            return SizedBox(
              width: 1,
            );
          } else {
            return SizedBox();
          }
        },
        itemCount: 5,
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Fruites(),
    debugShowCheckedModeBanner: false,
  ));
}
