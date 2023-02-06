import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my1project/finance%20UI/initial.dart';

void main() {
  runApp(MaterialApp(
    home: Second(),
  ));
}

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          height: MediaQuery.of(context).size.height * 1,
          width: MediaQuery.of(context).size.width * 1,
          child: Image.network(
            "https://images.unsplash.com/photo-1635776062043-223faf322554?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1932&q=80",
            fit: BoxFit.cover,
          ),
        ),
        Column(
          children: [
            Container(
              height: 33,
              width: double.infinity,
              color: Colors.black,
              child: Text(
                "Date",
                style: TextStyle(color: Colors.grey[600], fontSize: 25),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 360, top: 30),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Colors.white,
                ),
                height: 30,
                width: 30,
                child: Icon(
                  Icons.arrow_back_ios_new,
                  size: 25,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 160, top: 30),
              child: Text(
                "Select Invoice Date",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              width: 370,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.white),
              child: ListTile(
                leading: Text(
                  "Eg: December 12, 2022",
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 200, top: 30),
              child: Text(
                "Select Amount",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              width: 370,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.white),
              child: ListTile(
                leading: Text(
                  "Eg: 2500",
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 1),
              child: Container(
                  height: 400,
                  width: 400,
                  child: Image(
                      image: NetworkImage(
                          "https://cdn2.iconfinder.com/data/icons/map-17/200/573_map-512.png"))),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 70),
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      height: 60,
                      width: 180,
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => First()));
                          },
                          child: Center(
                              child: Text(
                            "< Back",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )))),
                ),
                SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10, top: 70),
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue,
                      ),
                      height: 60,
                      width: 180,
                      child: TextButton(
                          onPressed: () {},
                          child: Center(
                              child: Text(
                            "Next >",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )))),
                )
              ],
            )
          ],
        )
      ]),
    );
  }
}
