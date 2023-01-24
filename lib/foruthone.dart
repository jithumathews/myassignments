import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Profile_UI(),
    debugShowCheckedModeBanner: false,
  ));
}

class Profile_UI extends StatelessWidget {
  const Profile_UI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white70,
        title: const Icon(
          Icons.arrow_back,
          color: Colors.black,
          size: 30,
        ),
        actions: const [
          Center(
              child: Padding(
            padding: EdgeInsets.only(right: 160),
            child: Text(
              "Account",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          )),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: Container(
        child: ListView(
          children: [
            Center(
              child: Container(
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1672825464619-79acee9f7e29?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
                  radius: 100,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 50, right: 50, top: 20),
              height: 80,
              child: Column(
                children: const [
                  Text(
                    "Jithu Mathews",
                    style: TextStyle(
                        fontSize: 35,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "📧 jithumathews111@gmail.com",
                    style: TextStyle(fontSize: 20, color: Colors.blueGrey),
                  ),
                ],
              ),
            ),
            Container(
              height: 90,
              margin: const EdgeInsets.only(
                left: 30,
                right: 30,
              ),
              child: Column(
                children: [
                  Text(
                    "📱 +91 6238642168",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue,
                      ),
                      child: Center(child: Text("Edit Profile",style: TextStyle(color: Colors.white,fontSize: 20),)),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 35, right: 35),
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width * 0.2,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Column(
                    children: const [
                      ProfTile(
                        text: "My Wallet",
                        icon: Icon(
                          Icons.privacy_tip_outlined,
                          color: Colors.black,
                        ),
                      ),
                      ProfTile(
                        text: "Terms and Policies",
                        icon: Icon(Icons.history, color: Colors.black),
                      ),
                      ProfTile(
                        text: "About",
                        icon:
                            Icon(Icons.help_outline_sharp, color: Colors.black),
                      ),
                      ProfTile(
                        text: "Logout",
                        icon: Icon(Icons.settings, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 3,
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

class ProfTile extends StatelessWidget {
  const ProfTile({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  final String text;
  final Icon icon;

  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.only(top: 15, bottom: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.grey[200]),
      child: ListTile(
        dense: true,
        title: Center(
          child: Text(
            text,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ),
        leading: icon,
        trailing: Icon(
          Icons.arrow_forward_ios,
          color: Colors.black,
        ),
      ),
    );
  }
}
