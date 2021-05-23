import 'package:csv/csv.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:random_string/random_string.dart';

import 'allCsv.dart';
import 'loadCsvDataScreen.dart';

class AddTr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      theme: ThemeData(
        primarySwatch: Colors.red,
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
        backgroundColor: Colors.redAccent,
        title: new Text("Add Teachers"),
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
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: Text(
                  "Load all Teacher File",
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
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: Text(
                  "Add Teacher File form Phone Storage",
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
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: Text(
                  "Load Created Teacher File",
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
      ["No.", "Name", "Designation"],
      ["1", randomAlpha(3), randomAlpha(3)],
      ["2", randomAlpha(3), randomAlpha(3)],
      ["3", randomAlpha(3), randomAlpha(3)]
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
