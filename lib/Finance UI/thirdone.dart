import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: third(),
  ));
}

class third extends StatefulWidget {
  @override
  State<third> createState() => _thirdState();
}

class _thirdState extends State<third> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 1,
        width: MediaQuery.of(context).size.width * 1,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1635776062043-223faf322554?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1932&q=80"),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            Container(
              height: 33,
              width: double.infinity,
              color: Colors.black,
              child: Text(
                "Upload",
                style: TextStyle(color: Colors.grey[600], fontSize: 25),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, right: 200),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                height: 30,
                width: 160,
                child: Text(
                  "< Rewards Wallet",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ),
            ),
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25, top: 20),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.blue,
                        ),
                        height: 60,
                        width: 180,
                        child: Column(
                          children: [
                            Text(
                              "Total Balance",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "14,325 🪙",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, top: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        width: 180,
                        height: 40,
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Redeemed",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "12,000 🪙",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
                                ),
                              ],
                            ),
                            VerticalDivider(
                              color: Colors.black,
                              thickness: 1,
                              indent: 10,
                              endIndent: 10,
                            ),
                            Column(
                              children: [
                                Text(
                                  "Expired ",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "1000 🪙",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Image(
                    image: NetworkImage(
                        "https://micaic.com/dil/GBw5oB75hYJ0PpQsmgDhpgAAAA.jpg"),
                    height: 130,
                    width: 200,
                  ),
                )
              ],
            ),
            Expanded(
              child: DefaultTabController(
                length: 2,
                child: Column(
                  children: <Widget>[
                    Container(
                      color: Color.fromARGB(179, 240, 243, 250),
                      constraints: BoxConstraints.expand(height: 50),
                      child: TabBar(
                        indicator: BoxDecoration(
                          color: Colors.white,
                          border: Border(
                            bottom: BorderSide(
                              color: Color.fromARGB(255, 61, 61, 165),
                              width: 3,
                            ),
                          ),
                        ),
                        unselectedLabelColor:
                            Color.fromARGB(255, 130, 130, 132),
                        labelColor: Color.fromARGB(255, 61, 61, 165),
                        indicatorColor: Color.fromARGB(255, 61, 61, 165),
                        tabs: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Tab(text: "Rewards"),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.local_atm,
                                color: Color.fromARGB(255, 130, 130, 132),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Tab(text: "Rewards"),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    SizedBox(height: 25),
                    Expanded(
                      child: TabBarView(
                        children: [
                          ListView.separated(
                              itemCount: 10,
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15, right: 15),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        left: 10,
                                        right: 5,
                                      ),
                                      child: ListTile(
                                        leading: Text(
                                          '${index * 12}',
                                          style: TextStyle(
                                            fontSize: 28,
                                            fontWeight: FontWeight.w500,
                                            color: Color.fromARGB(
                                                255, 60, 98, 212),
                                          ),
                                        ),
                                        trailing: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            const Text(
                                              "Valid Till",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                            Text(
                                              "jan ${index * 2 + 4},2023",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          ],
                                        ),
                                        title: Text(
                                          "Order ID - 1050855${index + 15}",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                              separatorBuilder: (context, index) {
                                return Container(
                                  height: 10,
                                );
                              }),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(90),
                              child: Image.asset("images/bg.png"),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.blue,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.app_registration,
                color: Colors.blue,
              ),
              label: 'Cart'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.card_giftcard,
                color: Colors.blue,
              ),
              label: 'Account'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_pin,
                color: Colors.blue,
              ),
              label: 'Account')
        ],
      ),
    );
  }
}
