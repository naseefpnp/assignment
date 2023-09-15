import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HotelUI(),
    debugShowCheckedModeBanner: false,
  ));
}

class HotelUI extends StatefulWidget {
  const HotelUI({Key? key}) : super(key: key);

  @override
  _HotelUIState createState() => _HotelUIState();
}

class _HotelUIState extends State<HotelUI> {
  bool iconColor = false;
  int _currentIndex = 0; // Track the current tab index

  // Define content for each tab
  final List<Widget> _tabs = [
    HotelDetails(),
    OtherTab1(),
    OtherTab2(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _tabs[_currentIndex], // Display content based on the current tab
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index; // Update the current tab index
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Details',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Tab 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Tab 2',
          ),
        ],
      ),
    );
  }
}

class HotelDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              const SizedBox(
                height: 300,
                width: double.infinity,
              ),
              Container(
                height: 300,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1517840901100-8179e982acb7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Positioned(
                bottom: 85,
                left: 20,
                child: Text(
                  "Crown plaza",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const Positioned(
                bottom: 55,
                left: 20,
                child: Text(
                  "Kochi, Kerala",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                left: 20,
                child: Container(
                  height: 30,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey,
                  ),
                  child: const Center(
                    child: Text(
                      "8.4/8.5 Reviews",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                right: 15,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite,
                    // Change color based on iconColor
                    size: 35,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const ListTile(
            title: Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.purple,
                ),
                Icon(
                  Icons.star,
                  color: Colors.purple,
                ),
                Icon(
                  Icons.star,
                  color: Colors.purple,
                ),
                Icon(
                  Icons.star,
                  color: Colors.purple,
                ),
                Icon(Icons.star_border),
              ],
            ),
            subtitle: Row(
              children: [Icon(Icons.near_me), Text("8.5 km to LuLu")],
            ),
            trailing: Column(
              children: [
                Text(
                  "\$200",
                  style: TextStyle(color: Colors.purple, fontSize: 25),
                ),
                Text(
                  "/per Night",
                  style: TextStyle(fontSize: 10),
                )
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: Colors.purple,
              onPrimary: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 95, vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            child: Text("Book Now"),
          ),
          const ListTile(
            title: Text(
              "Crowne Plaza Goves Plan",
              style: TextStyle(fontSize: 20),
            ),
            subtitle: Text(
              """The Tru Blu Experience A Beacon of modern style and sophistication in the heart of Kochi Radisson Blu Kochi is one of the best upper upscale hotels in the city. Situated in the City Centre, the hotel lies in close proximity to the transportation hubs, leisure destinations and great shopping areas. The central location of the hotel appeals to both business and leisure travelers. The excellence of the hotel is reflected in its chic interiors, combined with a unique service culture, and an unforgettable ambiance that makes one want to book a return stay even before one has left Kochi. Visitors to the hotel discover the perfect blend of relaxation and productivity through its rooms and suites which are soundproof, ensuring a restful visit. Amenities like an on-site Spa, well-equipped Banquet Halls, Gymnasium, an open rooftop Swimming Pool, and a Business Centre, are some of the facilities offered, that delivers a perfect blend of relaxation and productivity.""",
            ),
          ),
        ],
      ),
    );
  }
}

class OtherTab1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Content for tab 1
          Text('Tab 1 Content'),
        ],
      ),
    );
  }
}

class OtherTab2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Content for tab 2
          Text('Tab 2 Content'),
        ],
      ),
    );
  }
}

