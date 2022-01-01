import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:social_network/Home/body.dart';
import 'package:social_network/Material/MaterialColor.dart';



class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  TextEditingController textController = TextEditingController();
//             new Container(
//               decoration: new BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(20),
//                 child: Container(
//                   decoration: new BoxDecoration(
//                     color: Color(0xfff5f4f4),
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                   child: new TextField(
//                     controller: textController,
//                     decoration: InputDecoration(
//                       hintText: 'asdasd',
//                       border: InputBorder.none,
//                       suffixIcon: new Icon(Icons.clear),
//                       focusColor: appColor,
//                       hoverColor: appColor,
//                       fillColor: appColor,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: new SafeArea(
        child: ListView(
          children: [
            new Container(
              decoration: new BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  height: 50,
                  decoration: new BoxDecoration(
                    color: Color(0xfff5f4f4),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        new Text('SOCIAL NETWORK'),
                        new Icon(Icons.search),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            new StaggeredGrid.count(
              crossAxisCount: 5,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              children: [
                new StaggeredGridTile.count(
                  crossAxisCellCount: 4,
                  mainAxisCellCount: 2,
                  child: videoContainer('https://aspb24.cdn.asset.aparat.com/aparat-video/25920181294de685008a2a2178b121bb31089184-360p.mp4?wmsAuthSign=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbiI6IjZjOTgwNTY3YzVlMTE4NjYzNGE1MjQ1NmRmODliZjhhIiwiZXhwIjoxNjQwODM1MDg1LCJpc3MiOiJTYWJhIElkZWEgR1NJRyJ9.yd0-S53-z00BWt39AkyBCCZvZLcA5TX-STHyDTSB_I8'),
                ),
                new StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 2,
                  child: imageContainer('search3.jpg'),
                ),
                new StaggeredGridTile.count(
                  crossAxisCellCount: 9,
                  mainAxisCellCount: 2,
                  child: imageContainer('search2.jpg'),
                ),
                new StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 2,
                  child: imageContainer('search5.jpg'),
                ),
                new StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 4,
                  child: imageContainer('search1.jpg'),
                ),
                new StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 2,
                  child: imageContainer('search6.jpg'),
                ),
                new StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 5,
                  child: imageContainer('search4.jpg'),
                ),
                new StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 5,
                  child: imageContainer('search7.jpg'),
                ),
                new StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 3,
                  child: imageContainer('post2.jpg'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


imageContainer(image) {
  return AnimationConfiguration.staggeredGrid(
      columnCount: columnCount,
      position: position,
      duration: duration,
      child: new ScaleAnimation(
      child: new FadeInAnimation(
      child: Container(
    height: 100,
    decoration: new BoxDecoration(
      image: new DecorationImage(
        image: new AssetImage('images/' + image),
        fit: BoxFit.cover,
      ),
    ),
  ))));
}

videoContainer(video) {
  return new AnimationConfiguration.staggeredGrid(
    columnCount: columnCount,
    position: position,
    duration: duration,
    child: new ScaleAnimation(
      child: new FadeInAnimation(
      child: new Container(
    child: new BetterPlayer.network(
      video,
      betterPlayerConfiguration: new BetterPlayerConfiguration(
        autoPlay: false,
      ),
    ),
  ))));
}


