import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Navdrawer()));
}

class Navdrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation Drawer"),
      ),
      drawer: Drawer(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  end: Alignment.topRight,
                  colors: [
                    Colors.lightBlueAccent,
                    Colors.white,
                    Colors.redAccent
                  ])),
          child: ListView(
            children: [
              const ListTile(
                title: Text("Jithu Mathews"),
                subtitle: Text("jithumathews0010@gmail.com"),
                trailing: Icon(Icons.close),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                     "https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?auto=compress&cs=tinysrgb&w=600"),
                  radius: 40,
                ),
              ),
              ListTile(
                leading: Icon(Icons.dashboard_outlined),
                title: Text("Dashboard"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: Icon(Icons.leaderboard_outlined),
                title: Text("Leads"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: Icon(Icons.man_outlined),
                title: Text("Clients"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: Icon(Icons.notification_important_sharp),
                title: Text("Projects"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: Icon(Icons.man_sharp),
                title: Text("Partners"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: Icon(Icons.subscriptions_outlined),
                title: Text("Subscription"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: Icon(Icons.payments_outlined),
                title: Text("Payments"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: Icon(Icons.supervised_user_circle_sharp),
                title: Text("Users"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: Icon(Icons.library_add_check_rounded),
                title: Text("Library"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: Icon(Icons.local_activity),
                title: Text("Local Activity"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              SizedBox(
                width: 200,
                height: 50,
              ),
              SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Log Out"),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent[100],
                      shadowColor: Colors.redAccent[200],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}