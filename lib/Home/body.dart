import 'package:flutter/material.dart';
import 'package:social_network/Home/posts.dart';
import 'package:social_network/Home/stories.dart';
import 'package:social_network/Material/MaterialColor.dart';


class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}
int columnCount = 0;
int position = 3;
Duration duration = Duration(seconds: 1);
Duration milliDuration = Duration(milliseconds: 800);
double horizontalOffset = 100;

class _BodyState extends State<Body> {

  @override
  Widget build(BuildContext context) {
    return new SingleChildScrollView(
  child: new SafeArea(
    child: new Column(
      children: [
        new Center(
          child: new Container(
            padding: const EdgeInsets.all(2),
            margin: const EdgeInsets.only(top: 30 , bottom: 0),
            child: new Text('Social Network'.toUpperCase() , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold , letterSpacing: 3)),
          ),
        ),
        new SizedBox(height: 20),
        Stories(),
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Posts(),
        ),
      ],
    ),
  ),
    );
  }
}
