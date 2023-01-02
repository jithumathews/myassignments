import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage( this.title)

  String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  List<String> myImageAndCaption = [
    "https://picsum.photos/250?image=9",
    "https://picsum.photos/250?image=10",
    "https://picsum.photos/250?image=11",
    "https://picsum.photos/250?image=12",
    "https://picsum.photos/250?image=13",
    "https://picsum.photos/250?image=14"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: StaggeredGridView.countBuilder(
          crossAxisCount: kIsWeb ? 4 : 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          itemCount: myImageAndCaption.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                tileAction(myImageAndCaption[index][1]);
                print("Container clicked" + myImageAndCaption[index][1]);
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                child: Column(
                  children: [
                    Expanded(
                      flex: 9,
                      child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          child: Image.network(myImageAndCaption[index],
                              fit: BoxFit.fill)),
                    ),
                    Expanded(flex: 1, child: Text("title")),
                  ],
                ),
              ),
            );
          },
          staggeredTileBuilder: (index) {
            return StaggeredGridView.count(1, index.isEven ? 1 : 0.7);
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
