import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(MaterialApp(home: BooksGrid(),
  debugShowCheckedModeBanner: false,));
}
class BooksGrid extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          title: Text(
            "Explore",
            style: GoogleFonts.satisfy(color: Colors.white, fontSize: 25),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue, Colors.green],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
        ),
        body:SingleChildScrollView(
          child: StaggeredGrid.count(crossAxisCount: 4,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: [
              StaggeredGridTile.count(
                  crossAxisCellCount:2 ,
                  mainAxisCellCount: 3,
                  child: Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.network("https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQsWatmiWHCyyD90kWsRtSYNUowMvKmOoxu-0f1xhuUom8tkeN_",fit: BoxFit.cover,width: 100,height: 150,),
                        ),
                        SizedBox(height: 10,),
                        Text('The Old Man and The Sea',style: TextStyle(fontWeight: FontWeight.bold),),
                        SizedBox(height: 10,),
                        Text('1952'),
                        Text('Ernest Hemingway')
                      ],
                    ),
                  )
              ),
              StaggeredGridTile.count(
                  crossAxisCellCount:2 ,
                  mainAxisCellCount: 4,
                  child: Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.network("https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRkWXbfQrO5oTm1I5izjeRTbQD-vKPnybT24S2kFw2eH8LyyCo5",fit: BoxFit.cover,),
                        ),
                        SizedBox(height: 10,),
                        Text("Harry Potter and the Philosopher's Stone",style: TextStyle(fontWeight: FontWeight.bold),),
                        SizedBox(height: 10,),
                        Text('1997'),
                        Text('J. K. Rowling')
                      ],
                    ),
                  )
              ),
              StaggeredGridTile.count(
                  crossAxisCellCount:2 ,
                  mainAxisCellCount: 4,
                  child: Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.network("https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRNVAmh70ISb6agWhnaKka39PGdP1Z5VvKIGauBtj1s_A4zGCzX",fit: BoxFit.cover,),
                        ),
                        SizedBox(height: 10,),
                        Text('Treasure Island',style: TextStyle(fontWeight: FontWeight.bold),),
                        SizedBox(height: 10,),
                        Text('1882'),
                        Text('Robert Louis Stevenson')
                      ],
                    ),
                  )
              ),
              StaggeredGridTile.count(
                  crossAxisCellCount:2 ,
                  mainAxisCellCount: 3,
                  child: Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlv8kHrE0S4I_hSAG3IV4J6cZwHQ2e861EJqdEMwTDJOtiCeO5",fit: BoxFit.cover,width: 150,height: 200,),
                        ),
                        SizedBox(height: 10,),
                        Text('Black Beauty',style: TextStyle(fontWeight: FontWeight.bold),),
                        SizedBox(height: 10,),
                        Text('1877'),
                        Text('Anna Sewell')
                      ],
                    ),
                  )
              ),
              StaggeredGridTile.count(
                  crossAxisCellCount:2 ,
                  mainAxisCellCount: 4,
                  child: Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.network("https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTvp21kv8gJKqXCdQt1vHC7DAMqbtLGE7y0bMehwKtXhTBU7AcA",fit: BoxFit.cover,),
                        ),
                        SizedBox(height: 10,),
                        Text("The Lords of The Flies",style: TextStyle(fontWeight: FontWeight.bold),),
                        SizedBox(height: 10,),
                        Text('1954'),
                        Text('William Golding')
                      ],
                    ),
                  )
              ),
              StaggeredGridTile.count(
                  crossAxisCellCount:2 ,
                  mainAxisCellCount: 8,
                  child: Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.network("https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSWVj98u4ls8GNBUUjOzayEXXm060-vy8duTZzNQsDAGEg9tHvb",fit: BoxFit.cover,),
                        ),
                        SizedBox(height: 10,),
                        Text("Charlotte's Web",style: TextStyle(fontWeight: FontWeight.bold),),
                        SizedBox(height: 10,),
                        Text('1952'),
                        Text('E. B. White, 1952')
                      ],
                    ),
                  )
              ),
            ],),
        )
    );
  }
}