import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my1project/finance%20UI/secondary.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: First(),
  ));
}

class First extends StatelessWidget {
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
                "Invoice Number",
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
              padding: const EdgeInsets.only(right: 120, top: 30),
              child: Text(
                "Enter The Invoice Mumber",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15, top: 14),
              child: Container(
                height: 50,
                width: 370,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.only(right: 180),
                  child: Text(
                    "Eg: 6238642168",
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
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
                  padding: const EdgeInsets.only(left: 20, top: 140),
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      height: 60,
                      width: 180,
                      child: TextButton(
                          onPressed: () {},
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
                  padding: const EdgeInsets.only(right: 10, top: 140),
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue,
                      ),
                      height: 60,
                      width: 180,
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => Second()));
                          },
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
