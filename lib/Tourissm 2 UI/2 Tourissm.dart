import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my1project/Tourissm%202%20UI/2%20Tourissm%201.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: home1(),
  ));
}

class home1 extends StatefulWidget {
  @override
  State<home1> createState() => _home1State();
}

class _home1State extends State<home1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Places",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 25),
        ),
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            height: 100,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                "Popular",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 35,
                    color: Colors.black),
              ),
            ),
          ),
          Stack(
            children: [
              SizedBox(
                height: 130,
                width: 370,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => home2()));
                    },
                    child: Card(
                      child: Image(
                        image: NetworkImage(
                            "https://images.unsplash.com/photo-1673809758231-d864d9e35307?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                  left: 15,
                  top: 50,
                  child: Text(
                    "ITALY",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ))
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Stack(
            children: [
              SizedBox(
                height: 130,
                width: 370,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => home2()));
                    },

                    child: Card(
                      child: Image(
                        image: NetworkImage(
                            "https://images.unsplash.com/photo-1673794784636-2e69436d3eee?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1856&q=80"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                  left: 15,
                  top: 50,
                  child: Text(
                    "VIETNAM",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ))
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Stack(
            children: [
              SizedBox(
                height: 130,
                width: 370,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => home2()));
                    },
                    child: Card(
                      child: Image(
                        image: NetworkImage(
                            "https://images.unsplash.com/photo-1673641688165-6f428e12c51b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                  left: 15,
                  top: 50,
                  child: Text(
                    "THAILAND",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ))
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Stack(
            children: [
              SizedBox(
                height: 130,
                width: 370,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => home2()));
                    },
                    child: Card(
                      child: Image(
                        image: NetworkImage(
                            "https://images.unsplash.com/photo-1528360983277-13d401cdc186?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                  left: 15,
                  top: 50,
                  child: Text(
                    "JAPAN",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ))
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Stack(
            children: [
              SizedBox(
                height: 130,
                width: 370,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => home2()));
                    },
                    child: Card(
                      child: Image(
                        image: NetworkImage(
                            "https://images.unsplash.com/photo-1473951574080-01fe45ec8643?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1808&q=80"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                  left: 15,
                  top: 50,
                  child: Text(
                    "EUROPE",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
