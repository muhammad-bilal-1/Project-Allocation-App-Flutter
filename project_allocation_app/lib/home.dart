import 'package:flutter/material.dart';
import 'package:project_allocation_app/admin_panel.dart';
import 'package:project_allocation_app/Teacher_panel/teacher_panel.dart';
import 'package:project_allocation_app/contact_us.dart';
import 'student_panel.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        // drawer: NavDrawer(),
        appBar: AppBar(
          title: Text('HOME'),
        ),
        drawer: Drawer(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: 100.0,
              ),
              FlatButton(
                // width: 20.0,
                height: 50.0,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => admin_page()));
                },
                child: Text(
                  "  Admin Panel Design",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.orangeAccent,
                  ),
                ),
                color: Colors.blue,
              ),
              SizedBox(
                height: 20.0,
              ),
              FlatButton(
                //  minWidth: 20.0,
                height: 50.0,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => teacherPannel()));
                },
                child: Text(
                  "Teacher Panel Design",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.orangeAccent,
                  ),
                ),
                color: Colors.blue,
              ),
              SizedBox(
                height: 20.0,
              ),
              FlatButton(
                //  minWidth: 20.0,
                height: 50.0,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Stdlist()));
                },
                child: Text(
                  "Student Panel Design",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.orangeAccent,
                  ),
                ),
                color: Colors.blue,
              ),
              SizedBox(
                height: 20.0,
              ),
              FlatButton(
                // minWidth: 20.0,
                height: 50.0,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => contact_us()));
                },
                child: Text(
                  " Contact us",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.orangeAccent,
                  ),
                ),
                color: Colors.blue,
              )
            ],
          ),
        ),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            FlatButton(
              minWidth: 70.0,
              height: 70.0,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => admin_page()));
              },
              child: Text(
                "Admin Panel Design",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              color: Colors.orange,
            ),
            SizedBox(
              height: 50.0,
            ),
            FlatButton(
              minWidth: 70.0,
              height: 70.0,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => teacherPannel()));
              },
              child: Text(
                "Teacher Panel Design",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              color: Colors.orange,
            ),
            SizedBox(
              height: 50.0,
            ),
            FlatButton(
              minWidth: 70.0,
              height: 70.0,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Stdlist()));
              },
              child: Text(
                "Student Panel Design",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              color: Colors.orange,
            ),
            SizedBox(
              height: 50.0,
            ),
            FlatButton(
              minWidth: 70.0,
              height: 70.0,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => contact_us()));
              },
              child: Text(
                "Contact us",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              color: Colors.orange,
            )
          ],
        ),
      ),
    );
  }
}
