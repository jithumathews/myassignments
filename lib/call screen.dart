import 'package:flutter/material.dart';

class ListPage6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children:const [

          ListTile(
            title: Text("Cristiano Ronaldo"),
            subtitle: Text("<--  15 minutes ago"),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://cdn-icons-png.flaticon.com/512/3048/3048122.png"),
            ),
            trailing: Icon(Icons.phone),
          ),
          ListTile(
            title: Text("Ragnor Lothbrok"),
            subtitle: Text("-->  21 minutes ago"),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://cdn-icons-png.flaticon.com/128/4139/4139981.png"),
            ),
            trailing: Icon(Icons.phone),
          ),

          ListTile(
            title: Text("Joker"),
            subtitle: Text("<--  34 minutes ago"),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://cdn-icons-png.flaticon.com/128/5516/5516386.png"),
            ),
            trailing: Icon(Icons.phone),
          ),
          ListTile(
            title: Text("Bruce Wayne"),
            subtitle: Text("<--  1 hr ago"),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://cdn-icons-png.flaticon.com/128/4140/4140046.png"),
            ),
            trailing: Icon(Icons.phone),
          ),
          ListTile(
            title: Text("Walter White"),
            subtitle: Text("<--  8 hours ago "),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://cdn-icons-png.flaticon.com/128/265/265674.png"),
            ),
            trailing: Icon(Icons.phone),
          ),
          ListTile(
            title: Text("Daemon Targerian"),
            subtitle: Text("-->  yesterday, 10.59"),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://cdn-icons-png.flaticon.com/128/4140/4140077.png"),
            ),
            trailing: Icon(Icons.phone),
          ),
          ListTile(
            title: Text("Homelander"),
            subtitle: Text("<--  yesterday, 9.40"),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://cdn-icons-png.flaticon.com/128/1081/1081092.png"),
            ),
            trailing: Icon(Icons.phone),
          ),
          ListTile(
            title: Text("Jaime Lannister"),
            subtitle: Text("<--  yesterday, 8.20"),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://cdn-icons-png.flaticon.com/128/4140/4140048.png"),
            ),
            trailing: Icon(Icons.phone),
          ),
          ListTile(
            title: Text("Wednesday Addams"),
            subtitle: Text("-->  yesterday, 7.00"),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://cdn-icons-png.flaticon.com/128/4140/4140047.png"),
            ),
            trailing: Icon(Icons.phone),
          ),
        ],
      ),
    );
  }
}
