import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Hotel_Booking(),
  ));
}

var images = [
  "https://images.unsplash.com/photo-1611892440504-42a792e24d32?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8aG90ZWwlMjByb29tfGVufDB8fDB8fA%3D%3D&w=1000&q=80",
  "https://media.istockphoto.com/id/1370825295/photo/modern-hotel-room-with-double-bed-night-tables-tv-set-and-cityscape-from-the-window.jpg?b=1&s=170667a&w=0&k=20&c=ltmI5thpj-pfho5VsW23pd0wYYZxtQq6RTejWXXvRwI=",
  "https://media.istockphoto.com/id/1210328194/photo/ocean-sunset-view-from-bedroom-balcony-for-travel-concept.jpg?b=1&s=170667a&w=0&k=20&c=VvPLHfCIazQ0Yq8UewN1fOohBembuH_LbNwZmmQpRLE=",
  "https://media.istockphoto.com/id/903417402/photo/luxury-construction-hotel-with-swimming-pool-at-sunset.jpg?b=1&s=170667a&w=0&k=20&c=hi6Ig3G2CfPBMnlN3O7Nxbvr0670YfmdPGFL8ZRgG0o=",
  "https://images.unsplash.com/photo-1582719478250-c89cae4dc85b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aG90ZWwlMjByb29tc3xlbnwwfHwwfHw%3D&w=1000&q=80"
];
var picture = [
  "https://images.unsplash.com/photo-1611892440504-42a792e24d32?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8aG90ZWwlMjByb29tfGVufDB8fDB8fA%3D%3D&w=1000&q=80",
  "https://media.istockphoto.com/id/1370825295/photo/modern-hotel-room-with-double-bed-night-tables-tv-set-and-cityscape-from-the-window.jpg?b=1&s=170667a&w=0&k=20&c=ltmI5thpj-pfho5VsW23pd0wYYZxtQq6RTejWXXvRwI=",
  "https://media.istockphoto.com/id/1210328194/photo/ocean-sunset-view-from-bedroom-balcony-for-travel-concept.jpg?b=1&s=170667a&w=0&k=20&c=VvPLHfCIazQ0Yq8UewN1fOohBembuH_LbNwZmmQpRLE=",
  "https://media.istockphoto.com/id/903417402/photo/luxury-construction-hotel-with-swimming-pool-at-sunset.jpg?b=1&s=170667a&w=0&k=20&c=hi6Ig3G2CfPBMnlN3O7Nxbvr0670YfmdPGFL8ZRgG0o=",
  "https://images.unsplash.com/photo-1582719478250-c89cae4dc85b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aG90ZWwlMjByb29tc3xlbnwwfHwwfHw%3D&w=1000&q=80"
];

var title = [
  "Marriott",
  "Grand Hyatt",
  "Taj Malabar",
  "Crowne Plaza",
  "Presidency"
];
var subtitle = [
  "A five star hotel in ",
  "A four star hotel in",
  "A five star hotel in",
  "A four star hotel in",
  "A five star hotel in",
];

var place = [
  "Kochi",
  "Cochin",
  "Bolgatty",
  "Kochi",
  "Cochin",
];

var rate = [
  "\$149 / night",
  "\$109 / night",
  "\$79 / night",
  "\$119 / night",
  "\$89 / night"
];

var rating = [
  "4.8⭐",
  "4.6⭐",
  "4.1⭐",
  "4.2⭐",
  "3.9⭐",
];

class Hotel_Booking extends StatefulWidget {
  @override
  State<Hotel_Booking> createState() => _Hotel_BookingState();
}

class _Hotel_BookingState extends State<Hotel_Booking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            elevation: 1,
            backgroundColor: Colors.white,
            title: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello@Jithu",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blueGrey),
                ),
                Text(
                  "Find your favourite hotel",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ],
            ),
            floating: true,
            pinned: true,
            actions: [
              Container(
                width: 60,
                height: 10,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://images.unsplash.com/photo-1464547304833-02f72e3835ce?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXRodW1ibmFpbHx8NDMxNDgxNnx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=420&q=60"),
                        fit: BoxFit.fill)),
              ),
            ],
            bottom: AppBar(
              backgroundColor: Colors.white,
              title: SizedBox(
                width: 490,
                height: 50,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search for Hotels',
                      suffixIcon: Icon(Icons.search_sharp),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Popular Hotels",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                CarouselSlider.builder(
                    itemCount: images.length,
                    itemBuilder: (context, index, realIndex) {
                      return Container(
                        width: 190,
                        child: Card(
                          shadowColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                          child: Container(
                            child: Column(
                              children: [
                                Expanded(
                                    flex: 3,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(15),
                                              topLeft: Radius.circular(15)),
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                images[index],
                                              ),
                                              fit: BoxFit.fill)),
                                    )),
                                SizedBox(
                                  height: 10,
                                ),
                                Expanded(
                                    flex: 3,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          title[index],
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                        ),
                                        Text(
                                          subtitle[index],
                                          style: TextStyle(
                                              fontSize: 15, color: Colors.grey),
                                        ),
                                        Text(
                                          place[index],
                                          style: TextStyle(
                                              fontSize: 15, color: Colors.grey),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              rate[index],
                                              style:
                                                  TextStyle(color: Colors.blue),
                                            ),
                                            Text(
                                              rating[index],
                                              style:
                                                  TextStyle(color: Colors.blue),
                                            )
                                          ],
                                        )
                                      ],
                                    ))
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    options: CarouselOptions(
                        reverse: false,
                        scrollDirection: Axis.horizontal,
                        height: 230,
                        viewportFraction: .5,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        aspectRatio: 16 / 5,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enableInfiniteScroll: true,
                        autoPlayAnimationDuration:
                            Duration(milliseconds: 300))),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hotel Packages",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "View more",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.blue),
                      ),
                    )
                  ],
                ),
                hotellist(),
              ],
            )
          ])),
        ],
      ),
    );
  }
}

class hotellist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 1,
      width: MediaQuery.of(context).size.width * 1,
      child: ListView.builder(
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Container(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    height: 120,
                    width: 130,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            topLeft: Radius.circular(15)),
                        image: DecorationImage(
                            image: NetworkImage(
                              picture[index],
                            ),
                            fit: BoxFit.fill)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    child: Column(
                      children: [
                        Text(
                          title[index],
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                          subtitle[index],
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                        Text(
                          place[index],
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                        Text(
                          rate[index],
                          style: TextStyle(color: Colors.blue),
                        ),
                        Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.car_crash,
                                  color: Colors.blue,
                                )),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.emoji_food_beverage_rounded,
                                  color: Colors.blue,
                                )),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.wifi,
                                  color: Colors.blue,
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    height: 40,
                    width: 80,
                    color: Colors.blue,
                    child: ElevatedButton(onPressed: () {  }, child: Text(
                      "Back",style: TextStyle(color: Colors.white),
                    ),

                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
