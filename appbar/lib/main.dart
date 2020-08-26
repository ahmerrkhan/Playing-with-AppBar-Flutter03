import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, //to remove red label on top right corner
      title: "Exploring App Bar",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("Explore AppBar"),
          centerTitle: true,
          leading: IconButton(
            //Leading icon on top left before title
            icon: Icon(Icons.menu),
            onPressed: () {
              print("Menu Pressed");
            },
          ),
          actions: [
            //Action buttons on top right after title

            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print("Search Pressed");
              },
            ),

            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {
                print("Vertical pressed");
              },
            ),
          ],
          elevation: 30.0, //Elevation of AppBar

          actionsIconTheme: IconThemeData(
              //action button styles
              color: Colors.black,
              opacity: 10.0,
              size: 20.0),
        ),
      ),
    );
  }
}
