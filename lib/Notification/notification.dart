import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:social_network/Home/body.dart';
import 'package:social_network/Material/MaterialColor.dart';
import 'package:story_view/widgets/story_view.dart';



class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: new ListView(
            children: [
              new Center(
                child: new Container(
                  padding: const EdgeInsets.all(2),
                  margin: const EdgeInsets.only(top: 30 , bottom: 8),
                  child: new Text('Notifications'.toUpperCase() , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold , letterSpacing: 3)),
                ),
              ),
              new SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(15),
                child: new Text('This Week' , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold)),
              ),
              new SizedBox(height: 10),
              notificationImage('profiles.png' , 'reza, kambiz003 and 9 others' , ' started following you' , ' 8m' , false),
              notificationImage('profile-post.jpg' , 'mohammad and 98 others' , ' liked your video' , ' 2h' , true),
              notificationImage('profile-post2.jpg' , 'ali, soroush and 33 others' , ' liked your post' , ' 1d' , true),
              notificationImage('profiles.png' , 'football_gym' , ' started following you' , ' 5d' , false),
              Padding(
                padding: const EdgeInsets.all(15),
                child: new Text('This Month' , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold)),
              ),
              notificationImage('profile-post3.jpg' , 'ali, soroush and 33 others' , ' liked your post' , ' 1w' , true),
              notificationImage('profiles.png' , 'game_pes and 5 others' , ' started following you' , ' 3w' , false),
              notificationImage('profile-post4.jpg' , 'futball_nine, esteghlal_fan' , ' liked your post' , ' 2w' , true),
              notificationImage('profile-post5.jpg' , 'esteghlal_fan and 90 others' , ' liked your video' , ' 3w' , true),

            ],
          ),
        ),
    );

  }
}




notificationImage(image , text , detail , time , bool like) {
  return new AnimationConfiguration.staggeredGrid(
    columnCount: columnCount,
    position: position,
    duration: duration,
    child: new SlideAnimation(
      horizontalOffset: 100,
        child: new FadeInAnimation(
        child: Padding(
    padding: const EdgeInsets.only(bottom: 5),
    child: new Container(
      height: 80,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/' + image),
            fit: BoxFit.cover,
          ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    children: [
                      new Text(text + detail , style: TextStyle(fontSize: 15 , color: appColor)),
                      Padding(
                        padding: const EdgeInsets.all(1),
                        child: new Text(time , style: TextStyle(fontSize: 15 , color: appColor.withOpacity(0.5))),
                      ),
                    ],
                  ),
                )),
            like == true ? Padding(
              padding: const EdgeInsets.all(8),
              child: new Icon(Icons.favorite , size: 35 , color: Colors.pink.withOpacity(0.8)),
            ) : new Container(),
          ],
        ),
      ),
    ),
  ))));

}