import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Gridstackk(),
  ));
}

class Gridstackk extends StatelessWidget {
  var images = [
    "https://images.unsplash.com/photo-1449034446853-66c86144b0ad?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8NXx8fGVufDB8fHx8&w=1000&q=80",
    "https://media.istockphoto.com/id/1185953092/photo/the-main-attraction-of-paris-and-all-of-europe-is-the-eiffel-tower-in-the-rays-of-the-setting.jpg?b=1&s=170667a&w=0&k=20&c=RQMkDSuO8X0Wm_j6WgvcgR3mTucjAiFFgz0XmeUuYjg=",
    "https://media.istockphoto.com/id/1345970136/photo/elevated-dusk-view-to-the-illuminated-tower-bridge-and-skyline-of-london.jpg?b=1&s=170667a&w=0&k=20&c=7kFYQyQDyKz-97yZYzWRE6TcMFre4-LFGfGrVORwudw=",
    "https://images.unsplash.com/photo-1514813621023-7a1e3fca8c1b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fHJ1c3NpYXxlbnwwfHwwfHw%3D&w=1000&q=80",
    "https://media.istockphoto.com/id/471926619/photo/moraine-lake-at-sunrise-banff-national-park-canada.jpg?b=1&s=170667a&w=0&k=20&c=KBBk4Tby4x0FiwBFsnoBsEpZeakejMvVx9ACwpqWTLs=",
    "https://media.istockphoto.com/id/1214516974/photo/empty-streets-in-dublin-city-centre-during-coronavirus-dublin-ireland.jpg?b=1&s=170667a&w=0&k=20&c=CngzV43wDWKD1SBaYiProiiZtnhJ_cUyaQqfpRQ7hx8="
  ];

  var name = ["USA", "England", "France", "Russia", "Canada", "Dublin"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView"),
      ),
      body: GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(left: 10, right: 10, top: 15),
            child: Stack(
              children: [
                Card(
                  child: Image(
                    image: NetworkImage(images[index]),
                  ),
                ),
                Positioned(
                  top: 75,
                  left: 5,
                  child: Text(
                    name[index],
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        itemCount: images.length,
      ),
    );
  }
}
