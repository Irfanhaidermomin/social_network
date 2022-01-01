import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_network/Home/body.dart';
import 'package:social_network/Home/home.dart';
import 'package:social_network/Material/MaterialHome.dart';
import 'package:social_network/Material/MaterialMain.dart';
import 'package:social_network/Search/search.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.leftToRightWithFade,
      getPages: [
        new GetPage(name: '/' , page: () => new MaterialHome()),
      ],
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.blue,
      ),
    );
  }
}




class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: new Center(
        child: new Text('hello World'),
      ),
    );
  }
}
