import 'package:flutter/material.dart';
import 'package:my1project/Whatsapp%20UI/call%20screen.dart';

import 'package:my1project/Whatsapp%20UI/status%20screen.dart';


import 'chat screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TabFeature(),
  ));
}

class TabFeature extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[900],
          title: Text(
            "WhatsApp",
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.search),
            ),
            Padding(
              padding: EdgeInsets.only(right: 12),
              child: Icon(Icons.more_vert),
            ),

          ],
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.camera_alt_outlined),
              ),
              Tab(
                text: "Chats",
              ),
              Tab(
                text: "Status",
              ),
              Tab(
                text: "calls",
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text("Community"),
            ),
            ListPage1(),
            ListPage5(),
            ListPage6(),
          ],
        ),
      ),
    );
  }
}
