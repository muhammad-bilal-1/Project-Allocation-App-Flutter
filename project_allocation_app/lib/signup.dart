import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
//import 'package:project_allocation_app/Email_SignUp.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Sign up with",
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
            height: 2,
          ),
        ),
        Text(
          "Project Allocation App",
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            letterSpacing: 2,
            height: 1,
          ),
        ),
        SizedBox(
          height: 16,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: 'Enter Email / Username',
            hintStyle: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
            filled: true,
            fillColor: Colors.white,
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: 'Password',
            hintStyle: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
            filled: true,
            fillColor: Colors.white,
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
          ),
        ),
        SizedBox(
          height: 24,
        ),
        Container(
          height: 40,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.all(
              Radius.circular(25),
            ),
            boxShadow: [
              BoxShadow(
                color: Color(0xFFF3D657).withOpacity(0.2),
                spreadRadius: 3,
                blurRadius: 4,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Center(
              child: SignInButtonBuilder(
            icon: Icons.email,
            text: "SIGN UP WITH EMAIL",
            textColor: Colors.white,
            fontSize: 16.0,
            backgroundColor: Colors.black,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => null)); //EmailSignUp()),
            },
          )),
        ),
        SizedBox(
          height: 24,
        ),
        Text(
          "Or Signup with",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
            height: 1,
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
                onPressed: () {},
                color: Colors.black,
                icon: Icon(
                  Entypo.facebook_with_circle,
                  size: 32,
                )),
            SizedBox(
              width: 24,
            ),
            IconButton(
                onPressed: () {},
                color: Colors.black,
                icon: Icon(
                  Entypo.google__with_circle,
                  size: 32,
                )),
          ],
        )
      ],
    );
  }
}
