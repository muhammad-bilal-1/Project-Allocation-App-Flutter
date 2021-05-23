import 'package:csv/csv.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:random_string/random_string.dart';

import 'allCsv.dart';
import 'loadCsvDataScreen.dart';

class ViewStd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(title: ''),
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
        backgroundColor: Colors.orange,
        title: new Text(
          "View students",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MaterialButton(
              onPressed: () {
                generateCsv();
              },
              child: Container(
                padding: EdgeInsets.all(20), // 15
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: Text(
                  "View Studnet File",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  generateCsv() async {
    List<List<String>> data = [
      ["No.", "Name", "Roll No."],
      ["1", "Aqsa Tariq", "12"],
      ["2", "Adeela Shahzadi", "03"],
      ["3", "Mufassil Hussain", "49"],
      ["4", "Hamza Riaz", "26"],
      ["5", "Bilal Jutt", "51"],
      ["6", "Fardeen Mirza", "19"],
      ["7", "Ahmed Junaid", "04"],
      ["8", "Hamaz Ali", "24"],
      ["9", "Ahtisham Akbar", "29"],
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
}
