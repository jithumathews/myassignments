import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network("https://th.bing.com/th/id/OIP.Jf0NnGpH2AhNM3BtwZufwwHaJ4?pid=ImgDet&rs=1", height: 150, width: 150),
            SizedBox(height: 20),
            Text("Welcome to Animal Care", style: TextStyle(fontSize: 22)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/adoptions');
              },
              child: Text("Adopt a Pet"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/care_tips');
              },
              child: Text("Pet Care Tips"),
            ),
            SizedBox(height: 20),
           ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/veterinary_services');
              },
              child: Text("Veterinary Services"),
            ),
          ],
        ),
      ),
    );
    //math library random
  }
}
