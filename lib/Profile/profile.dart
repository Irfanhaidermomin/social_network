import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:social_network/Home/body.dart';
import 'package:social_network/Material/MaterialColor.dart';
import 'package:social_network/Material/MaterialImage.dart';



class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return new Scaffold(
      backgroundColor: Colors.white,
      body: new SafeArea(
        child: new Stack(
          alignment: Alignment.bottomCenter,
          children: [
      new AnimationConfiguration.staggeredGrid(
      columnCount: columnCount,
      position: position,
      duration: duration,
      child: new ScaleAnimation(
        child: new FadeInAnimation(
          child: Container(
              transform: Matrix4.translationValues(0 , size.width - 50 , 0),
              child: new GridView.count(
                crossAxisCount: 3,
                mainAxisSpacing: 0,
                crossAxisSpacing: 5,
                children: [
                  MaterialImage(image: 'profile-post.jpg' , video: true),
                  MaterialImage(image: 'profile-post2.jpg' , video: false),
                  MaterialImage(image: 'profile-post3.jpg' , video: false),
                  MaterialImage(image: 'profile-post4.jpg' , video: false),
                  MaterialImage(image: 'profile-post5.jpg' , video: true),
                ],
              ),
            ),))),
    new AnimationConfiguration.staggeredGrid(
    columnCount: columnCount,
    position: position,
    duration: duration,
    child: new SlideAnimation(
    child: new FadeInAnimation(
    child: new ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 0, bottom: 0),
                              child: Center(
                                child: new Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'images/1.jpeg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: appColor),
                                ),
                                child: new Material(
                                  elevation: 0,
                                  borderRadius: BorderRadius.circular(8),
                                  child: new MaterialButton(
                                    color: Colors.white,
                                    elevation: 0,
                                    onPressed: () {
                                      setState(() {
                                      });
                                    },
                                    child: Center(
                                      child: new Text(
                                              'Edit Profile',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: appColor,
                                          )),
                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(0),
                          child: new Container(
                            height: 100,
                            width: 300,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: new Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 35),
                                  child: new Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          new Text('8', style: TextStyle(
                                              fontSize: 20,
                                              color: appColor)),
                                          new Text('Posts', style: TextStyle(
                                              fontSize: 18, color: appColor.withOpacity(0.7))),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          new Text(
                                              '1M', style: TextStyle(
                                              fontSize: 20,
                                              color: appColor)),
                                          new Text('Followers', style: TextStyle(
                                              fontSize: 18, color: appColor.withOpacity(0.7))),

                                        ],
                                      ),
                                      Column(
                                        children: [
                                          new Text('7'.toString(),
                                              style: TextStyle(fontSize: 20,
                                                  color: appColor)),
                                          new Text('Following', style: TextStyle(
                                              fontSize: 18, color: appColor.withOpacity(
                                              0.7))),

                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 0 , top: 0),
                          child: Container(
                            width: 300,
                            child: Row(
                              children: [
                                new Text('abolfazlzareikm', style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: appColor)),
                                Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: new Icon(
                                      Icons.check_circle, color: Colors.blue),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(0),
                          margin: const EdgeInsets.only(top: 10),
                          width: 300,
                          child: new Text(
                            'Abolfazl Zarei',
                            style: TextStyle(fontSize: 15),
                          ),
                        ),

                      ],
                    ),)
                ]),))),
          ],
        ),
      ),
    );

  }
}





// new AnimationConfiguration.staggeredGrid(
//     columnCount: columnCount,
//     position: position,
//     duration: duration,
//     child: new ScaleAnimation(
//     child: new FadeInAnimation(
//     child: