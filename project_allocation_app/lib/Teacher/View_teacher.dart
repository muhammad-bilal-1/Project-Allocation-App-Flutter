import 'package:csv/csv.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:random_string/random_string.dart';

import 'allCsv.dart';
import 'loadCsvDataScreen.dart';

class ViewTr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      theme: ThemeData(
        primarySwatch: Colors.purple,
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
        backgroundColor: Colors.purple,
        title: new Text("View Teachers"),
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
                  color: Colors.purple,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: Text(
                  "View Teacher File",
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
      ["No.", "Name", "Designation"],
      ["1", "Abdullah Wali", "Lecturer"],
      ["2", "M. Ali Shahid", "HOD"],
      ["3", "Adil Sarwer", "DOO"]
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
