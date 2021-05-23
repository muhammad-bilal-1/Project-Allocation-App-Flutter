/*
library contactus;
import 'package:flutter/material.dart';
///Class for adding contact details/profile details as a complete new page in your flutter app.
class AddStd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: new AppBar(
        backgroundColor: Colors.blue,
        title: new Text("Add Student"),
        /*
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.history),
            onPressed: () {},
          ),
        ],

         */
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Add Students Here',
              style: TextStyle(
                fontFamily: 'Lobster',
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: 35.0,
              ),
            ),
            SizedBox(
              height: 50.0,
              width: 350.0,
              child: Divider(
                color: Colors.lightBlue,
                thickness: 1.0,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              color: Colors.white,
              child: ListTile(
                leading: Icon(
                  Icons.account_box,
                  color: Color(0xFF90CAF9),
                  size: 30.0,
                ),
                title: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.transparent,
                    hintText: "Add Name here...",
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              color: Colors.white,
              child: ListTile(
                leading: Icon(
                  Icons.add_business,
                  color: Color(0xFF90CAF9),
                  size: 30.0,
                ),
                title: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.transparent,
                    hintText: "Add Rollno here...",
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              color: Colors.white,
              child: ListTile(
                leading: Icon(
                  Icons.email_sharp,
                  color: Color(0xFF90CAF9),
                  size: 30.0,
                ),
                title: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.transparent,
                    hintText: "Add Email here...",
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
              width: 450.0,
            ),
            InkWell(
              //onTap: () => Get.to(WelcomeScreen()),
              child: Container(
                width: 200.0,
                margin: EdgeInsets.only(left: 15.0, top: 0.0),
                alignment: Alignment.center,
                padding: EdgeInsets.all(20), // 15
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: Text(
                  "Add",
                  style: Theme.of(context)
                      .textTheme
                      .button
                      .copyWith(color: Colors.white, fontSize: 19.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

 */
import 'package:csv/csv.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:random_string/random_string.dart';

import 'allCsv.dart';
import 'loadCsvDataScreen.dart';

class AddStd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Csv Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Csv Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue,
        title: new Text("Add Students"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MaterialButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => AllCsvFilesScreen()));
              },
              child: Container(
                padding: EdgeInsets.all(20), // 15
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: Text(
                  "Load all Student File",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            MaterialButton(
              onPressed: () {
                loadCsvFromStorage();
              },
              child: Container(
                padding: EdgeInsets.all(20), // 15
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: Text(
                  "Add Student File form Phone Storage",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            /*
            MaterialButton(
              onPressed: () {
                generateCsv();
              },
              child: Container(
                padding: EdgeInsets.all(20), // 15
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: Text(
                  "Load Created Student File",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),

             */
          ],
        ),
      ),
    );
  }

  generateCsv() async {
    List<List<String>> data = [
      ["No.", "Name", "Roll No."],
      ["1", randomAlpha(3), randomNumeric(3)],
      ["2", randomAlpha(3), randomNumeric(3)],
      ["3", randomAlpha(3), randomNumeric(3)]
    ];
    String csvData = ListToCsvConverter().convert(data);
    final String directory = (await getApplicationSupportDirectory()).path;
    final path = "$directory/csv-${DateTime.now()}.csv";
    print(path);
    final File file = File(path);
    await file.writeAsString(csvData);
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) {
          return LoadCsvDataScreen(path: path);
        },
      ),
    );
  }

  loadCsvFromStorage() async {
    FilePickerResult result = await FilePicker.platform.pickFiles(
      allowedExtensions: ['csv'],
      type: FileType.custom,
    );
    String path = result.files.first.path;
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) {
          return LoadCsvDataScreen(path: path);
        },
      ),
    );
  }
}
