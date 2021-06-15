import 'dart:async';
import 'package:flutter/material.dart';
//import 'package:project_allocation_app/home.dart';
import 'package:project_allocation_app/Account_Home.dart';

class splashscreen extends StatefulWidget {
  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => Account_home(), //HomeScreen(),
      ));
    });
  }

  // added test yourself
  // and made the text to align at center
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 10.0,
            child: Divider(
              color: Colors.black,
            ),
          ),
          Text(
            'Welcome to Project Allcoation App',
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.red,
              fontFamily: "Satisfy",
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10.0,
            child: Divider(
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          CircleAvatar(
            radius: 87,
            backgroundColor: Colors.black,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 85,
              backgroundImage:
                  AssetImage('img/65ba488626025cff82f091336fbf94bb.gif'),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          SizedBox(
            height: 10.0,
            child: Divider(
              color: Colors.black,
            ),
          ),
          Text(
            'Group',
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.red,
              fontFamily: "Satisfy",
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10.0,
            child: Divider(
              color: Colors.black,
            ),
          ),
        ],
      )),
    );
  }
}
