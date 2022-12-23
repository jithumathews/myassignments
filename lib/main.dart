import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myassignments/login.dart';
import 'package:myassignments/signup.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Splash(),
  ));
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.all(15.0),
        child: ListView(
          children: [
            Padding(padding: EdgeInsets.only(top: 50)),
            Center(
                child: Text("Hello There!",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 50))),
            Padding(padding: EdgeInsets.only(top: 30, left: 20)),
            Center(
              child: Text(
                "Automatic identify verification which enebles you to verify your identity",
                style: TextStyle(fontSize: 18),
              ),
            ),
            Padding(padding: EdgeInsets.only(left: 30, top: 40)),
            Center(
              child: Image.network(
                  "https://cdn-icons-png.flaticon.com/256/9254/9254896.png"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginForm()));
                },
                child: const Text("Login",),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignForm()));
                },
                child: const Text("Sign up",),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
