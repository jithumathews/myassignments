import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HotelDetails(),
  ));
}

class HotelDetails extends StatelessWidget {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 350,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1611892440504-42a792e24d32?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80")),
                ),
              ),
              Positioned(
                top: 220,
                left: 0,
                child: Column(
                  children: [
                    Text(
                      "Crowne Plaza",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.white),
                    ),
                    Text("Kochi,Kerala",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.white)),
                  ],
                ),
              ),
              Positioned(
                top: 295,
                child: Row(
                  children: [
                    Container(
                        margin: EdgeInsets.all(10),
                        height: 38,
                        width: 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[200],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(
                            "8.4/85 reviews",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        )),
                  ],
                ),
              ),
              Positioned(
                  right: 5,
                  top: 300,
                  child: Icon(
                    Icons.favorite_outline,
                    size: 40,
                    color: Colors.white,
                  )),
              Positioned(
                  left: 180,
                  top: 30,
                  child: Text(
                    "DETAIL",
                    style: TextStyle(
                        fontWeight: FontWeight.w200,
                        color: Colors.white,
                        fontSize: 20),
                  )),
            ],
          ),
          Positioned(
            top: 350,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.purpleAccent,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.purpleAccent,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.purpleAccent,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.purpleAccent,
                  ),
                  Icon(
                    Icons.star_border_outlined,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 180),
                    child: Column(
                      children: [
                        Text(
                          "\$200",
                          style: TextStyle(
                              color: Colors.purpleAccent,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                        Text(
                          "/per night",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 15),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              height: 50,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.purpleAccent,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 130, top: 10),
                child: Text(
                  "Book Now",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
          Container(
            height: 300,
            width: double.infinity,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 250, top: 20),
                  child: Text(
                    "Description",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    "Celebrate business success at the Crowne Plaza Kochi with a touch of leisure and panoramic views of backwaters and exquisite cuisine combined with rejuvenation at our Aira Spa. Crowne Plaza Kochi is ideally located on the new business district of city NH 47 Bypass and provides easy access to Info Park Kakkanad, Cochin Special Economic Zone, M.G. Road, Cochin Port, Shipyard, Naval Base, major sightseeing areas like Fort Kochi, Mattancherry and is 45 minutes away from Cochin International Airport",
                    style: TextStyle(fontSize: 16),
                  ),
                )
              ],
            ),
          ),
          BottomNavigationBar(
            elevation: 20,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: "Search"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_outline), label: "Favorites"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: "Settings"),
            ],
          )
        ],
      ),
    );
  }
}
