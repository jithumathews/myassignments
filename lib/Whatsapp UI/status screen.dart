import 'package:flutter/material.dart';

class ListPage5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            title: Text("My Status"),
            subtitle: Text("Tap to add status update"),
            leading: Image(
              image: NetworkImage(
                  "https://cdn-icons-png.flaticon.com/128/1834/1834187.png"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Container(
              color: Colors.grey[200],
              child: SizedBox(
                width: double.infinity,
                height: 18,
                child: Text("Recent Updates"),
              ),
            ),
          ),
          ListTile(
            title: Text("Cristiano Ronaldo"),
            subtitle: Text("15 minutes ago"),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://cdn-icons-png.flaticon.com/512/3048/3048122.png"),
            ),
          ),
          ListTile(
            title: Text("Ragnor Lothbrok"),
            subtitle: Text("21 minutes ago"),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://cdn-icons-png.flaticon.com/128/4139/4139981.png"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Container(
              color: Colors.grey[200],
              child: SizedBox(
                width: double.infinity,
                height: 18,
                child: Text("Viewed Updates"),
              ),
            ),
          ),
          ListTile(
            title: Text("Joker"),
            subtitle: Text("34 minutes ago"),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://cdn-icons-png.flaticon.com/128/5516/5516386.png"),
            ),
          ),
          ListTile(
            title: Text("Bruce Wayne"),
            subtitle: Text("1 hr ago"),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://cdn-icons-png.flaticon.com/128/4140/4140046.png"),
            ),
          ),
          ListTile(
            title: Text("Walter White"),
            subtitle: Text("8 hours ago "),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://cdn-icons-png.flaticon.com/128/265/265674.png"),
            ),
          ),
          ListTile(
            title: Text("Daemon Targerian"),
            subtitle: Text("yesterday, 10.59"),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://cdn-icons-png.flaticon.com/128/4140/4140077.png"),
            ),
          ),
          ListTile(
            title: Text("Homelander"),
            subtitle: Text("yesterday, 9.40"),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://cdn-icons-png.flaticon.com/128/1081/1081092.png"),
            ),
          ),
          ListTile(
            title: Text("Jaime Lannister"),
            subtitle: Text("yesterday, 8.20"),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://cdn-icons-png.flaticon.com/128/4140/4140048.png"),
            ),
          ),
          ListTile(
            title: Text("Wednesday Addams"),
            subtitle: Text("yesterday, 7.00"),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://cdn-icons-png.flaticon.com/128/4140/4140047.png"),
            ),
          ),
        ],
      ),
    );
  }
}
