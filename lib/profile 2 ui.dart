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
          Icon(
            Icons.menu,
            color: Colors.black,
            size: 30,
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: ListView(
        children: [
          Center(
            child: Container(
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1672825464619-79acee9f7e29?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
                radius: 70,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 70, right: 70, top: 25),
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [

                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://cdn2.iconfinder.com/data/icons/social-media-2285/512/1_Facebook_colored_svg_copy-128.png"),
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://cdn1.iconfinder.com/data/icons/logotypes/32/circle-twitter-128.png"),
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://cdn0.iconfinder.com/data/icons/social-media-2091/100/social-06-128.png"),
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://cdn4.iconfinder.com/data/icons/ionicons/512/icon-social-github-128.png"),
                ),
              ],
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
                  "@developer",
                  style: TextStyle(fontSize: 20, color: Colors.blueGrey),
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            margin: const EdgeInsets.only(
              left: 30,
              right: 30,
            ),
            child: Column(
              children: const [
                Text(
                  "Junior Flutter Developer",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 35, right: 35),
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width * 0.2,
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  ProfTile(
                    text: "Privacy",
                    icon: Icon(
                      Icons.privacy_tip_outlined,
                      color: Colors.black,
                    ),
                  ),
                  ProfTile(
                    text: "Purchase History",
                    icon: Icon(Icons.history,
                        color: Colors.black),
                  ),
                  ProfTile(
                    text: "Help & Support",
                    icon: Icon(Icons.help_outline_sharp,
                        color: Colors.black),
                  ),
                  ProfTile(
                    text: "Settings",
                    icon: Icon(Icons.settings,
                        color: Colors.black),
                  ),
                  ProfTile(
                    text: "Invite a friend",
                    icon: Icon(Icons.person_add_alt_1_outlined,
                        color: Colors.black),
                  ),
                  ProfTile(
                    text: "Log Out",
                    icon: Icon(Icons.logout,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
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
      margin: const EdgeInsets.only(top: 15, bottom: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: Colors.grey[300]),
      child: ListTile(
        dense: true,
        title: Text(
          text,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
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