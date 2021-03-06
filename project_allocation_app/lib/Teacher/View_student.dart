import 'dart:async';
import 'dart:math';
//import 'package:project_allocation_app/pdf_viewer.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
//import 'package:path/path.dart' as path;
//import 'package:image_picker/image_picker.dart';
import 'package:file_picker/file_picker.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

String uri;
void passurl(final URL) {
  uri = URL['url'];
}

class ViewStd extends StatefulWidget {
  // const retandup({Key key}) : super(key: key);
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  @override
  _retandupState createState() => _retandupState();
}

class _retandupState extends State<ViewStd> {
  FirebaseStorage storage = FirebaseStorage.instance;
  Future<void> _upload() async {
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

    final String fileName = '${randomname}.pdf';
    File pdfFile = File(result.files.single.path);

    try {
      // Uploading the selected image with some custom meta data
      await storage.ref(fileName).putFile(
          pdfFile,
          SettableMetadata(customMetadata: {
            'uploaded_student': 'List',
            'description_student': 'Some description...'
          }));

      // Refresh the UI
      setState(() {});
    } on FirebaseException catch (error) {
      print(error);
    }
  }

  Future<List<Map<String, dynamic>>> _loadPDF() async {
    List<Map<String, dynamic>> files = [];

    final ListResult result = await storage.ref().list();
    final List<Reference> allFiles = result.items;

    await Future.forEach<Reference>(allFiles, (file) async {
      final String fileUrl = await file.getDownloadURL();
      final FullMetadata fileMeta = await file.getMetadata();
      files.add({
        "url": fileUrl,
        "path": file.fullPath,
        "uploaded_student": fileMeta.customMetadata['uploaded_student'],
        "description_student": fileMeta.customMetadata['description_student']
      });
    });

    return files;
  }

  Future<void> _delete(String ref) async {
    await storage.ref(ref).delete();
    // Rebuild the UI
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.orange,
        title: new Text("View Students"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: FutureBuilder(
                future: _loadPDF(),
                builder: (context,
                    AsyncSnapshot<List<Map<String, dynamic>>> snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: (context, index) {
                        final PDF = snapshot.data[index];
                        return Card(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          child: ListTile(
                            dense: false,
                            leading: Image.asset('assets/img/12.png',
                                width: 50.0, height: 50.0),
                            title: Text(PDF['uploaded_student'] ?? 'File'),
                            subtitle: Text(
                                PDF['description_student'] ?? 'Description...'),
                            trailing: IconButton(
                              onPressed: () {
                                setState(() {
                                  passurl(snapshot.data[index]);
                                  Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                          builder: (context) => pdfopen()));
                                });
                              },
                              icon: Icon(
                                Icons.table_view_sharp,
                                color: Colors.orangeAccent,
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  }

                  return Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class pdfopen extends StatefulWidget {
  const pdfopen({Key key}) : super(key: key);

  @override
  _pdfopenState createState() => _pdfopenState();
}

class _pdfopenState extends State<pdfopen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child:
                SfPdfViewer.network(uri, enableDocumentLinkAnnotation: false)));
  }
}
