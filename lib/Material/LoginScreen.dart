import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_network/Material/MaterialColor.dart';
import 'package:social_network/Material/MaterialMain.dart';
import 'package:social_network/Material/RegisterScreen.dart';



class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
        decoration: new BoxDecoration(
          color: mainColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              new Container(
                height: 340,
                decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: new Column(
                  children: [
                    new Center(
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: new Text('login'.toUpperCase(), style: TextStyle(
                            fontSize: 18, letterSpacing: 2)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(23),
                      child: new TextField(
                        decoration: new InputDecoration(
                          hintText: 'email',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(23),
                      child: new TextField(
                        obscureText: true,
                        decoration: new InputDecoration(
                          hintText: 'password',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 21),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          new GestureDetector(
                              onTap: () {
                                setState(() {
                                  Get.to(RegisterScreen());
                                });
                              },
                              child: new Text('Click if you have not registered')),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              new SizedBox(height: 20),
              new Center(
                child: new MaterialButton(
                  onPressed: () {
                    Get.to(MaterialMain());
                  },
                  minWidth: 100,
                  color: Colors.white,
                  child: new Text('login' , style: TextStyle(fontSize: 18)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
