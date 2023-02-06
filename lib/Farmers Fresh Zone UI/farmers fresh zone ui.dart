import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Farmer(),
  ));
}

class Farmer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text(
              "FARMERS FRESH ZONE",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            backgroundColor: Colors.green,
            actions: [
              Padding(
                padding: EdgeInsets.only(right: 15),
                child: Icon(Icons.location_on),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15, right: 10),
                child: Text(
                  "Kochi",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
            bottom: AppBar(
              backgroundColor: Colors.green,
              elevation: 0,
              title: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                    icon: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Icon(Icons.search),
                    ),
                    labelText: "Search for vegitables",
                  ),
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 22),
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        width: 110,
                        child: Center(
                            child: Text(
                              "VEGETABLES",
                              style: TextStyle(color: Colors.green),
                            )),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.green.shade100),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 40,
                        width: 110,
                        child: Center(
                            child: Text(
                              "FRUITS",
                              style: TextStyle(color: Colors.green),
                            )),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.green.shade100),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 40,
                        width: 110,
                        child: Center(
                            child: Text(
                              "EXOTIC CUTS",
                              style: TextStyle(color: Colors.green),
                            )),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.green.shade100),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      CarouselSlider(
                          items: [
                            Container(
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://www.shutterstock.com/image-vector/hand-drawn-set-vegetables-fruits-600w-1406260340.jpg"))),
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://www.shutterstock.com/image-vector/hand-drawn-set-vegetables-fruits-600w-1406260337.jpg"))),
                            ),
                          ],
                          options: CarouselOptions(
                            autoPlay: true,
                            viewportFraction: .7,
                            height: 200,
                            enlargeCenterPage: true,
                            aspectRatio: 16 / 9,
                            autoPlayCurve: Curves.easeInToLinear,
                            autoPlayAnimationDuration: Duration(
                                milliseconds: 600),
                            enableInfiniteScroll: true,
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Icon(Icons.timer, color: Colors.green,),
                            SizedBox(
                              height: 10,
                            ),
                            Text("30 MINS POLICY", style: TextStyle(
                                color: Colors.green)
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.cell_tower_sharp, color: Colors
                                .green),
                            SizedBox(
                              height: 10,
                            ),
                            Text("TRACEABILITY", style: TextStyle(
                                color: Colors.green)
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.add_home_work_rounded, color: Colors
                                .green),
                            SizedBox(
                              height: 10,
                            ),
                            Text("LOCAL SOURCING", style: TextStyle(
                                color: Colors.green)
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ])),
          SliverList(delegate: SliverChildListDelegate(
              [
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Shop By Category", style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),),
                ),
                SizedBox(
                  height: 10,
                ),
                Vegetables_grid(),
              ]
          )
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.green,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.green,
              ),
              label: 'Cart'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.green,
              ),
              label: 'Account')
        ],
      ),
    );
  }
}

class Vegetables_grid extends StatelessWidget {
  List<String>images = [
    "https://st3.depositphotos.com/1006899/12789/i/600/depositphotos_127893414-stock-photo-special-offer-sign-symbol.jpg",
    "https://media.istockphoto.com/id/98026003/photo/tomatoes.jpg?b=1&s=170667a&w=0&k=20&c=MIz_LKVtdnXExJyOG1sltnt9p9Lw_YtsNi_YeCCDnHo=",
    "https://images.unsplash.com/photo-1488551511020-571c741f122a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1000&q=80",
    "https://media.istockphoto.com/id/995518546/photo/assortment-of-colorful-ripe-tropical-fruits-top-view.jpg?b=1&s=170667a&w=0&k=20&c=frnzxYjtn8MP9kpLy7AY2DU_s9ohVBlAflpUacaDx7w=",
    "https://media.istockphoto.com/id/803556536/photo/fruit-fresh-mixed-tropical-fruit-salad-bowl-of-healthy-fresh-fruit-salad-died-and-fitness.jpg?b=1&s=170667a&w=0&k=20&c=E8JmmwmySy918mn2P-w14BCohxaAOGbt2e6sZrNgmRw=",
    "https://images.unsplash.com/photo-1512621776951-a57141f2eefd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aGVhbHRoeSUyMGZvb2R8ZW58MHx8MHx8&w=1000&q=80",
    "https://images.unsplash.com/photo-1509358271058-acd22cc93898?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Zmxhdm91cnN8ZW58MHx8MHx8&w=1000&q=80",
    "https://media.istockphoto.com/id/1075446340/photo/various-fresh-mix-salad-leaves-with-tomato-in-bowl-on-wooden-background.jpg?b=1&s=170667a&w=0&k=20&c=8dNVZB6mZPLjh5fZY7NmiMcfsJX_UY3HfGbRnlYVEfM=",
    "https://images.unsplash.com/photo-1553787434-45e1d245bfbb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8b3JnYW5pYyUyMGZvb2R8ZW58MHx8MHx8&w=1000&q=80"
  ];
  List<String> name = [
    "Offers", "Vegetables", "Fruits",
    "Exotic", "Fresh Cuts", "Nutrition Chargers",
    "Packed Flavours", "Gourmet Salads", "Organic Items"];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.all(10.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 2, mainAxisSpacing: 2),
        itemCount: images.length,
        itemBuilder: (BuildContext, int index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery
                    .of(context)
                    .size
                    .height / 10,
                width: MediaQuery
                    .of(context)
                    .size
                    .width * .3,
                decoration: BoxDecoration(
                  boxShadow: [BoxShadow(color: Colors.green, blurRadius: 15,),],
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(images[index])),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Center(child: Text(name[index])),
            ],
          );
        });
  }
}

