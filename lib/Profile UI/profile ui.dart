import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Profile(),
  ));
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Container(
        height: 600,
        width: 600,
        child: Stack(
          children: [
            Image(
              image: NetworkImage(
                "https://images.unsplash.com/photo-1670969548019-18ec1aae8abe?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDh8NnNNVmpUTFNrZVF8fGVufDB8fHx8&auto=format&fit=crop&w=600&q=60",
              ),
            ),
            Positioned(
              left:70,
              top: 210,
              right: 70,
              child: Row(
                children:const[
                  CircleAvatar(
                    child: Icon(Icons.message,color: Colors.white,),
                    backgroundColor: Colors.red,
                  ),
                  SizedBox(
                    width: 30,
                    height: 30,
                  ),
                  CircleAvatar(
                    foregroundImage: NetworkImage("https://wallpapercave.com/dwp2x/wp2566164.jpg"),
                    radius: 50,
                  ),
                  SizedBox(
                    width: 30,
                    height: 30,
                  ),
                  CircleAvatar(
                    child: Icon(Icons.add),
                  ),

                ],
              ),
            ),

            Positioned(
              left: 120,
                right: 0,
                top: 320,
                child: Text("David Beckham",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
            Positioned(
                left: 150,
                right: 0,
                top: 350,
                child: Text("model/super star",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.blue),)),
          ],
        ),
      ),
    );
  }
}
