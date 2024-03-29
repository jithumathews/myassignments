import 'package:flutter/material.dart';

import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

void main() {
  runApp((MaterialApp(
    home: StaggeredAssign(),
  )));
}

class StaggeredAssign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<StaggeredTile> _staggeredStyle = const [
      StaggeredTile.count(1, 1.3),
      StaggeredTile.count(1, 2),
      StaggeredTile.count(1, 1.3),
      StaggeredTile.count(1, 2),
      StaggeredTile.count(1, 1.3),
    ];

    List<Tile> _tiles = const [
      Tile(
          url:
          'https://images.unsplash.com/photo-1511300636408-a63a89df3482?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80',
          title: 'Some Data',
          subtitle: 'Data Subtitles'),
      Tile(
          url:
          'https://images.unsplash.com/photo-1512850183-6d7990f42385?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
          title: 'Some Data',
          subtitle: 'WData Subtitles'),
      Tile(
          url:
          'https://images.unsplash.com/photo-1511300636408-a63a89df3482?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80',
          title: 'Some Data',
          subtitle: 'Data Subtitles'),
      Tile(
          url:
          'https://images.unsplash.com/photo-1619639572420-e0eac8689c29?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
          title: 'Some Data',
          subtitle: 'Wallpaper'),
      Tile(
          url:
          'https://images.unsplash.com/photo-1623387641168-d9803ddd3f35?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80',
          title: 'Wallpaper',
          subtitle: 'Data Subtitles')
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Staggered Assignment'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: StaggeredGridView.count(
          mainAxisSpacing: 6,
          crossAxisSpacing: 6,
          crossAxisCount: 2,
          staggeredTiles: _staggeredStyle,
          children: _tiles,
        ),
      ),
    );
  }
}

class Tile extends StatelessWidget {
  final String url;
  final String title;
  final String subtitle;
  const Tile({
    Key? key,
    required this.url,
    required this.title,
    required this.subtitle,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.grey[300],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(url),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text(subtitle),
                ],
              ),
            )
          ],
        ));
  }
}