import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
//import 'package:project_allocation_app/login.dart';
//import 'package:get/get.dart';

class SignUp extends StatefulWidget {
  // const SignUp({ Key? key }) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String _email, _password;
  final auth = FirebaseAuth.instance;
  //final _formkey = GlobalKey<FormState>();
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
          onChanged: (value) {
            setState(() {
              _email = value.trim();
            });
          },
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
          onChanged: (value) {
            setState(() {
              _password = value.trim();
            });
          },
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
            text: "SIGN UP",
            textColor: Colors.white,
            fontSize: 16.0,
            backgroundColor: Colors.black,
            onPressed: () async {
              dynamic result = await (auth.createUserWithEmailAndPassword(
                  email: _email, password: _password));
              // final snackBar = SnackBar(content: Text('$result'));
              // ScaffoldMessenger.of(context).showSnackBar(snackBar);
              if (result == null) {
                final snackBar =
                    SnackBar(content: Text('Please Enter a valid Email'));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              } else {
                final snackBar =
                    SnackBar(content: Text('You are Successfully Registered'));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }
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


// class SignUps extends StatelessWidget {
//   @override
//  }
