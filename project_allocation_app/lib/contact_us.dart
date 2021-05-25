import 'package:flutter/material.dart';
import 'package:project_allocation_app/admin_panel.dart';
import 'package:project_allocation_app/teacher_panel.dart';
import 'package:project_allocation_app/contact_us.dart';
import 'student_panel.dart';

class contact_us extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amberAccent,
        appBar: AppBar(
          title: Text('CONTACT US'),
          backgroundColor: Colors.blue,
        ),
        drawer: Drawer(
          child: Column(
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
        body: SafeArea(
          child: Expanded(
            child: ListView(
              children: [
                //TODO MUHAMMAD BILAL
                CircleAvatar(
                  child: Image.asset("images/Bilal.png"),
                  backgroundColor: Colors.transparent,
                  radius: 30.0,
                ),
                Center(
                  child: Text(
                    'MUHAMMAD BILAL',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                        fontFamily: 'Pacifico'),
                  ),
                ),
                Container(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.phone,
                        color: Colors.black,
                        size: 15.0,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        '+923047966966',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.email,
                        color: Colors.black,
                        size: 15.0,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text('jutt.muhammadbilal@gmail.com',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  width: 400.0,
                  height: 20.0,
                  child: Divider(
                    color: Colors.black,
                  ),
                ),

                //TODO FARDEEN MIRZA
                CircleAvatar(
                  child: Image.asset("images/fard.png"),
                  backgroundColor: Colors.transparent,
                  radius: 30.0,
                ),
                Center(
                  child: Text(
                    'FARDEEN MIRZA',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                        fontFamily: 'Pacifico'),
                  ),
                ),
                Container(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.phone,
                        color: Colors.black,
                        size: 15.0,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        '+923401671460',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.email,
                        color: Colors.black,
                        size: 15.0,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text('Fardeenmirza5@icloud.com',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  width: 400.0,
                  height: 20.0,
                  child: Divider(
                    color: Colors.black,
                  ),
                ),

                //TODO MUFFASAL HUSSAIN
                CircleAvatar(
                  radius: 30.0,
                ),
                Center(
                  child: Text(
                    'MUFFASAL HUSSAIN',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                        fontFamily: 'Pacifico'),
                  ),
                ),
                Container(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.phone,
                        color: Colors.black,
                        size: 15.0,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        '+923401671460',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.email,
                        color: Colors.black,
                        size: 15.0,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text('Fardeenmirza5@icloud.com',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  width: 400.0,
                  height: 20.0,
                  child: Divider(
                    color: Colors.black,
                  ),
                ),

                //TODO AQSA TARIQ
                CircleAvatar(
                  radius: 30.0,
                ),
                Center(
                  child: Text(
                    'AQSA TARIQ',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                        fontFamily: 'Pacifico'),
                  ),
                ),
                Container(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.phone,
                        color: Colors.black,
                        size: 15.0,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        '+923401671460',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.email,
                        color: Colors.black,
                        size: 15.0,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text('Fardeenmirza5@icloud.com',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  width: 400.0,
                  height: 20.0,
                  child: Divider(
                    color: Colors.black,
                  ),
                ),

                //TODO AHMAD JUNAID TARIQ
                CircleAvatar(
                  radius: 30.0,
                ),
                Center(
                  child: Text(
                    'AHMAD JUNAID TARIQ',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                        fontFamily: 'Pacifico'),
                  ),
                ),
                Container(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.phone,
                        color: Colors.black,
                        size: 15.0,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        '+923401671460',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.email,
                        color: Colors.black,
                        size: 15.0,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text('Fardeenmirza5@icloud.com',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  width: 400.0,
                  height: 20.0,
                  child: Divider(
                    color: Colors.black,
                  ),
                ),

                //TODO AHTISHAM AKBAR
                CircleAvatar(
                  radius: 30.0,
                ),
                Center(
                  child: Text(
                    'AHTISHAM AKBAR',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                        fontFamily: 'Pacifico'),
                  ),
                ),
                Container(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.phone,
                        color: Colors.black,
                        size: 15.0,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        '+923401671460',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.email,
                        color: Colors.black,
                        size: 15.0,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text('Fardeenmirza5@icloud.com',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  width: 400.0,
                  height: 20.0,
                  child: Divider(
                    color: Colors.black,
                  ),
                ),

                //TODO HAMAZ ALI
                CircleAvatar(
                  radius: 30.0,
                ),
                Center(
                  child: Text(
                    'HAMAZ ALI',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                        fontFamily: 'Pacifico'),
                  ),
                ),
                Container(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.phone,
                        color: Colors.black,
                        size: 15.0,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        '+923401671460',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.email,
                        color: Colors.black,
                        size: 15.0,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text('Fardeenmirza5@icloud.com',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  width: 400.0,
                  height: 20.0,
                  child: Divider(
                    color: Colors.black,
                  ),
                ),

                //TODO ADEELA SHEHZADI
                CircleAvatar(
                  radius: 30.0,
                ),

                Center(
                  child: Text(
                    'ADEELA SHEHZADI',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                        fontFamily: 'Pacifico'),
                  ),
                ),
                Container(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.phone,
                        color: Colors.black,
                        size: 15.0,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        '+923401671460',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.email,
                        color: Colors.black,
                        size: 15.0,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text('Fardeenmirza5@icloud.com',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  width: 400.0,
                  height: 20.0,
                  child: Divider(
                    color: Colors.black,
                  ),
                ),

                //TODO HAMZA RIAZ
                CircleAvatar(
                  radius: 30.0,
                ),

                Center(
                  child: Text(
                    'HAMZA RIAZ',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                        fontFamily: 'Pacifico'),
                  ),
                ),
                Container(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.phone,
                        color: Colors.black,
                        size: 15.0,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        '+923401671460',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.email,
                        color: Colors.black,
                        size: 15.0,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text('Fardeenmirza5@icloud.com',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  width: 400.0,
                  height: 20.0,
                  child: Divider(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
