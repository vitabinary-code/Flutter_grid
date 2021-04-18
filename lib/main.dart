import 'package:flutter/material.dart';
import 'package:myapp/image.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        backgroundColor: Colors.white,
      ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.filter_1_rounded),
                ),
                Tab(
                  icon: Icon(Icons.filter_2_rounded),
                ),
                Tab(
                  icon: Icon(Icons.filter_3_rounded),
                ),
                Tab(
                  icon: Icon(Icons.auto_awesome_mosaic),
                ),
              ],
            ),
            title: Text(
              'Prototype App',
              style: GoogleFonts.pressStart2p(),
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              OneStaggeredGrid(),
              TwoStaggeredGrid(),
              ThreeGridNormal(),
              InstagramGrid(),
            ],
          ),
        ),
      ),
    );
  }
}

/// Use  material flutter package.
class ThreeGridNormal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: ListImageForGrid.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 3.0,
          mainAxisSpacing: 3.0,
        ),
        itemBuilder: (context, index) =>
            ImageCard(imagesForGrid: ListImageForGrid[index]),
      ),
    );
  }
}

/// Use  flutter_staggered_grid_view: ^0.4.0 package in pub.dev
/// Please install package in your pubspec.yaml

class OneStaggeredGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StaggeredGridView.countBuilder(
        crossAxisCount: 1,
        itemCount: ListImageForGrid.length,
        itemBuilder: (context, index) =>
            ImageCard(imagesForGrid: ListImageForGrid[index]),
        staggeredTileBuilder: (index) => StaggeredTile.count(1, 1),
        mainAxisSpacing: 3.0,
        crossAxisSpacing: 3.0,
      ),
    );
  }
}

/// Use  flutter_staggered_grid_view: ^0.4.0 package in pub.dev
/// Please install package in your pubspec.yaml

class InstagramGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StaggeredGridView.countBuilder(
        crossAxisCount: 3,
        itemCount: ListImageForGrid.length,
        itemBuilder: (context, index) =>
            ImageCard(imagesForGrid: ListImageForGrid[index]),
        staggeredTileBuilder: (index) => StaggeredTile.count(
            (index % 6 == 0) ? 2 : 1, (index % 6 == 0) ? 2 : 1),
        mainAxisSpacing: 3.0,
        crossAxisSpacing: 3.0,
      ),
    );
  }
}

/// Use  flutter_staggered_grid_view: ^0.4.0 package in pub.dev
/// Please install package in your pubspec.yaml

class TwoStaggeredGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      crossAxisCount: 2,
      itemCount: ListImageForGrid.length,
      itemBuilder: (context, index) =>
          ImageCard(imagesForGrid: ListImageForGrid[index]),
      staggeredTileBuilder: (index) => StaggeredTile.fit(1),
      crossAxisSpacing: 3.0,
      mainAxisSpacing: 3.0,
    );
  }
}
