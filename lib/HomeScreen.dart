import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, String>> popular = [
    {'img': 'assets/rain.jpg', "name": 'Rain Forest', "city": 'Costa Rica'},
    {'img': 'assets/img2.jpg', "name": 'Lake Louise', "city": 'Canada'},
    {'img': 'assets/pli.jpg', "name": 'Plitivice Lakes', "city": 'Croatia'},
    {'img': 'assets/skydu.jpg', "name": 'Dubai', "city": 'UAE'},
    {'img': 'assets/img3.jpg', "name": 'Effil Tower', "city": 'Paris'},
    {'img': 'assets/pyr.jpg', "name": 'Pyramids', "city": 'Edypt'},
    {'img': 'assets/img33.jpg', "name": 'island', "city": 'scandinavia'},
    {'img': 'assets/biza.jpg', "name": 'Biza Tower', "city": 'Italy'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        actions: [
          Container(
            padding: EdgeInsets.all(10),
            height: 40,
            child: Image.asset('assets/pp.jpg'),
          ),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.grey[300],
                      hintText: 'Search here...',
                      contentPadding: EdgeInsets.symmetric(vertical: 9),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Explore the world\nwith us!',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'New',
                      style: TextStyle(color: Colors.black, fontSize: 17),
                    ),
                    Text(
                      'Popular',
                      style: TextStyle(color: Colors.red, fontSize: 17),
                    ),
                    Text(
                      'Most Viewed',
                      style: TextStyle(color: Colors.black, fontSize: 17),
                    ),
                    Text(
                      'All places',
                      style: TextStyle(color: Colors.black, fontSize: 17),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                StaggeredGridView.countBuilder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: ScrollPhysics(),
                  crossAxisCount: 4,
                  itemCount: popular.length,
                  itemBuilder: (BuildContext context, int index) => Stack(
                    children: [
                      ClipRRect(
                        child: Image.asset(popular[index]['img']),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      Positioned(
                        bottom: 5,
                        left: 10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              popular[index]['name'],
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              popular[index]['city'],
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  staggeredTileBuilder: (int index) => new StaggeredTile.fit(2),
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
