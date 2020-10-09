import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> images = [
    'assets/image-asset.jpeg',
    'assets/lakel.jpg',
    'assets/pli.jpg',
    'assets/pyr.jpg',
    'assets/rainf.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('heloo'),
      ),
      body: StaggeredGridView.countBuilder(
        crossAxisCount: 2,
        itemCount: images.length,
        itemBuilder: (BuildContext context, int index) => Card(
          child: Column(
            children: <Widget>[
              Image.network(images[index]),
              Text("Some text"),
            ],
          ),
        ),
        staggeredTileBuilder: (int index) => new StaggeredTile.fit(2),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
      ),
    );
  }
}
