import 'dart:convert';

import 'dart:io';
import 'dart:math';
import 'package:project_allocation_app/Modal.dart';
//import 'package:firebase_database/firebase_database.dart';
//import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

//import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
//import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class ret_pdf extends StatefulWidget {
  //const upload_pdf({ Key? key }) : super(key: key);

  @override
  _ret_pdfState createState() => _ret_pdfState();
}

class _ret_pdfState extends State<ret_pdf> {
  List<Modal> itemList = List();
  //FirebaseStorage storage = FirebaseStorage.instance;
  final mainReference = FirebaseDatabase.instance.reference().child('Database');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PDF RETRIEVE'),
        backgroundColor: Colors.blue,
      ),
      body: itemList.length == 0
          ? Text("Loading")
          : ListView.builder(
              itemCount: itemList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: GestureDetector(
                    onTap: () {
                      String passData = itemList[index].link;

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => null, //ViewPdf(),
                          settings: RouteSettings(
                            arguments: passData,
                          ),
                        ),
                      );
                    },
                    child: Stack(
                      children: <Widget>[
                        Container(
                          height: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(''), fit: BoxFit.cover),
                          ),
                        ),
                        Center(
                          child: Container(
                            height: 140,
                            child: Card(
                              margin: EdgeInsets.all(18),
                              elevation: 7.0,
                              child: Center(
                                child: Text(itemList[index].name +
                                    " " +
                                    (index + 1).toString()),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          getPdfAndUpload();
        },
        child: Text("+"),
      ),
    );
  }

  savePdf(List<int> asset, String name) async {
    String url;
    Reference reference = FirebaseStorage.instance.ref().child(name);
    UploadTask uploadTask = reference.putData(asset);
    //String url = await (await uploadTask.onComplete).ref.getDownloadURL();
    uploadTask.whenComplete(() {
      url = reference.getDownloadURL().toString();
    }).catchError((onError) {
      print(onError);
    });
    documentFileUpload(url);
    //function call
  }

  void documentFileUpload(String str) {
    var data = {
      "PDF": str,
      "FileName": "New File",
      //store data
    };
    mainReference.child(CreateCryptoRandomString()).set(data).then((v) {
      print("Store Successfully");
    });
  }

  String CreateCryptoRandomString([int length = 32]) {
    final Random _random = Random.secure();
    var values = List<int>.generate(length, (i) => _random.nextInt(256));
    return base64Url.encode(values);
    //generate key
  }

  Future getPdfAndUpload() async {
    var rng = new Random();
    String randomname = "";
    for (var i = 0; i <= 20; i++) {
      print(rng.nextInt(100));
      randomname += rng.nextInt(100).toString();
    }
    FilePickerResult result = await FilePicker.platform.pickFiles(
      allowedExtensions: ['pdf'],
      type: FileType.custom,
    );
    //File file = await FilePicker.getFile(type: FileType.custom);
    String fileName = '${randomname}.pdf';
    File file = File(result.files.single.path);
    //File file = File(result.files.single.path);

    savePdf(file.readAsBytesSync(), fileName);
  }

  @override
  void initState() {
    mainReference.once().then((DataSnapshot snap) {
      var data = snap.value;
      itemList.clear();
      data.forEach((key, value) {
        Modal m = new Modal(value['PDF'], value['FileName']);
        itemList.add(m);
      });
      setState(() {});
      //get data from firebase
    });
  }
}
