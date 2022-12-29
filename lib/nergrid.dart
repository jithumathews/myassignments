import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Grid_with_builder(),
  ));
}

class Grid_with_builder extends StatelessWidget {
  var images = [
    "https://cdn-icons-png.flaticon.com/128/846/846551.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {

            children:[
                Container(
                  color: Colors.green,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.home, color: Colors.white,),
                      Text("Home", style:TextStyle(color: Colors.white))
                    ],
                  ),
                ),
                Container(
                  color: Colors.green,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.account_circle, color: Colors.white,),
                      Text("Account", style:TextStyle(color: Colors.white))
                    ],
                  ),
                ),
                Container(
                  color: Colors.green,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.message, color: Colors.white,),
                      Text("Messages", style:TextStyle(color: Colors.white))
                    ],
                  ),
                ),
                Container(
                  color: Colors.green,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.list_alt, color: Colors.white,),
                      Text("Orders", style:TextStyle(color: Colors.white))
                    ],
                  ),
                ),
              ];

          }),
    );
  }
}
