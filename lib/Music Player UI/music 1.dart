import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my1project/Music%20Player%20UI/music%202.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Music(),
  ));
}

class Music extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 80,
                width: double.infinity,
                child: Center(
                    child: Text(
                  "MUSIFY.",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 40,
                      color: Colors.pinkAccent),
                )),
              ),
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 120),
                      child: Text(
                        "Suggested Playlists",
                        style: TextStyle(
                            color: Colors.pinkAccent,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: CarouselSlider(
                          items: [
                            SizedBox(
                              height: 130,
                              width: 370,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Card(
                                  child: Image(
                                    image: NetworkImage(
                                        "https://images.unsplash.com/photo-1499415479124-43c32433a620?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fG11c2ljfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 130,
                              width: 370,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Card(
                                  child: Image(
                                    image: NetworkImage(
                                        "https://images.unsplash.com/photo-1508700115892-45ecd05ae2ad?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fG11c2ljfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 130,
                              width: 370,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Card(
                                  child: Image(
                                    image: NetworkImage(
                                        "https://images.unsplash.com/photo-1527261834078-9b37d35a4a32?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTI5fHxtdXNpY3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ],
                          options: CarouselOptions(
                            autoPlay: true,
                            viewportFraction: .7,
                            height: 200,
                            enlargeCenterPage: true,
                            aspectRatio: 16 / 9,
                            autoPlayCurve: Curves.easeInToLinear,
                            autoPlayAnimationDuration:
                                Duration(milliseconds: 600),
                            enableInfiniteScroll: true,
                          )),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 80, top: 10),
                child: Text(
                  "Recommanded For You",
                  style: TextStyle(
                      color: Colors.pinkAccent,
                      fontWeight: FontWeight.w700,
                      fontSize: 25),
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://images.unsplash.com/photo-1529066792305-5e4efa40fde9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
                        ),
                        title: Text(
                          "Hero",
                          style: TextStyle(color: Colors.white),
                        ),
                        subtitle: Text(
                          "Tyler Swift",
                          style: TextStyle(color: Colors.white),
                        ),
                        trailing: Wrap(
                          children: [
                            Icon(
                              Icons.star_border_outlined,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.download,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://th.bing.com/th/id/OIP.V2MuImi8hW9MD0xbWE3wZAHaHa?pid=ImgDet&rs=1"),
                        ),
                        title: Text(
                          "Unholy",
                          style: TextStyle(color: Colors.white),
                        ),
                        subtitle: Text(
                          "San Smith & Kevin Petras",
                          style: TextStyle(color: Colors.white),
                        ),
                        trailing: Wrap(
                          children: [
                            Icon(
                              Icons.star_border_outlined,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.download,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://th.bing.com/th/id/R.299341a827844f3c9697479e8267c668?rik=fONsCIzRMtz02Q&riu=http%3a%2f%2fi.ytimg.com%2fvi%2f8fuUY-N0ipk%2fmaxresdefault.jpg&ehk=m5gFDNGdtN9bIFEpD%2f6luZPfj5etbZDDcvg%2bsWdmDhY%3d&risl=&pid=ImgRaw&r=0"),
                        ),
                        title: Text(
                          "Lift Me UP ",
                          style: TextStyle(color: Colors.white),
                        ),
                        subtitle: Text(
                          "Rihaana",
                          style: TextStyle(color: Colors.white),
                        ),
                        trailing: Wrap(
                          children: [
                            Icon(
                              Icons.star_border_outlined,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.download,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://th.bing.com/th/id/OIP.tThJsrbnBPPGxvXCWiVRhQHaHa?pid=ImgDet&rs=1"),
                        ),
                        title: Text(
                          "Depression",
                          style: TextStyle(color: Colors.white),
                        ),
                        subtitle: Text(
                          "Dax",
                          style: TextStyle(color: Colors.white),
                        ),
                        trailing: Wrap(
                          children: [
                            Icon(
                              Icons.star_border_outlined,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.download,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://images.unsplash.com/photo-1473951574080-01fe45ec8643?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1808&q=80"),
                        ),
                        title: Text(
                          "I'M Good",
                          style: TextStyle(color: Colors.white),
                        ),
                        subtitle: Text(
                          "David Guietta",
                          style: TextStyle(color: Colors.white),
                        ),
                        trailing: Wrap(
                          children: [
                            Icon(
                              Icons.star_border_outlined,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.download,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 100),
                      child: BottomNavigationBar(
                        backgroundColor: Colors.black,
                        elevation: 30,
                        items: [
                          BottomNavigationBarItem(
                              icon: Icon(
                                Icons.home,
                                color: Colors.white,
                              ),
                              label: "Home"),
                          BottomNavigationBarItem(
                            icon: GestureDetector(
                              onTap: (){
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => Music2()));
                              },
                              child: Icon(
                                Icons.search,
                                color: Colors.white,
                              ),
                            ),
                            label: "Search",
                          ),
                          BottomNavigationBarItem(
                              icon: Icon(
                                Icons.menu,
                                color: Colors.white,
                              ),
                              label: "Settings"),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
