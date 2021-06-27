import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:project_allocation_app/home.dart';

class Login extends StatefulWidget {
  //const Login({ Key? key }) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String _email, _password;
  final auth = FirebaseAuth.instance;
  final _formkey = GlobalKey<FormState>();
  // void auths(final auth, String _email)
  // {

  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Welcome to",
              style: TextStyle(
                fontSize: 20,
                color: Color(0xFF1C1C1C),
                height: 2,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Project Allocation App",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1C1C1C),
                letterSpacing: 2,
                height: 1,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Please login to continue",
              style: TextStyle(
                fontSize: 18,
                color: Color(0xFF1C1C1C),
                height: 1,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) {
                setState(() {
                  _email = value.trim();
                });
              },
              decoration: InputDecoration(
                hintText: 'Email / Username',
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
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 16, vertical: 0),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            TextField(
              obscureText: true,
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
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 16, vertical: 0),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              height: 40,
              decoration: BoxDecoration(
                color: Color(0xFF1C1C1C),
                borderRadius: BorderRadius.all(
                  Radius.circular(25),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF1C1C1C).withOpacity(0.2),
                    spreadRadius: 3,
                    blurRadius: 4,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Center(
                  child: SignInButtonBuilder(
                      icon: Icons.email,
                      text: "SIGN IN",
                      textColor: Colors.white,
                      fontSize: 16.0,
                      backgroundColor: Colors.black,
                      onPressed: () async {
                        // if (_formkey.currentState.validate()) {
                        dynamic result = await auth.signInWithEmailAndPassword(
                            email: _email, password: _password);
                        if (result != null) {
                          setState(() {
                            final snackBar =
                                SnackBar(content: Text('Sign in Sucessfully'));
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) => HomeScreen()));
                          });
                        } else {
                          final snackBar = SnackBar(
                              content: Text(
                                  'Could not Sign in With those credentials'));
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        }
                      }
                      // },
                      )),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "FORGOT PASSWORD?",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1C1C1C),
                height: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class Logins extends StatelessWidget {
//   @override
// }
