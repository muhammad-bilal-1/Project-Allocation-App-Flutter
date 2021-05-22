import 'package:flutter/material.dart';
import 'package:project_allocation_app/add_project.dart';
import 'package:project_allocation_app/view_projects.dart';

class teacherPannel extends StatelessWidget {
  static final String path = "lib/teacher_panel/dash3.dart";
  final String image1 = "img/1.jpg";
  final TextStyle whiteText = TextStyle(color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).buttonColor,
      appBar: _buildAppBar(context),
      body: _buildStats(context),
    );
  }

  Widget _buildStats(BuildContext context) {
    final TextStyle stats = TextStyle(
        fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.white);
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        _buildTile(
                          color: Colors.deepOrangeAccent,
                          icon: Icons.add_circle_outline_sharp,
                          data: "Upload Project Title",
                        ),
                      ],
                    ),
                    onPressed: () {
                      null;
                    },
                  ),
                ),
                const SizedBox(width: 16.0),
                Expanded(
                  child: FlatButton(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        _buildTile(
                          color: Colors.deepPurple,
                          icon: Icons.remove_red_eye_sharp,
                          data: "View Projects",
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => projectlist()));
                    },
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        _buildTile(
                          color: Colors.teal,
                          icon: Icons.delete,
                          data: "Delete Project",
                        ),
                      ],
                    ),
                    onPressed: () {
                      null;
                    },
                  ),
                ),
                const SizedBox(width: 16.0),
                Expanded(
                  child: FlatButton(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        _buildTile(
                          color: Colors.amber,
                          icon: Icons.add_link,
                          data: "Add New Project",
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => add_project()));
                    },
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20.0),
        ],
      ),
    );
  }

  Container _buildTile({Color color, IconData icon, String data}) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      height: 150.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        color: color,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            icon,
            size: 100.0,
            color: Colors.white,
          ),
          Text(
            data,
            textAlign: TextAlign.center,
            style:
                whiteText.copyWith(fontWeight: FontWeight.bold, fontSize: 20.0),
          ),
        ],
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
      titleSpacing: 0.0,
      elevation: 0.5,
      backgroundColor: Colors.white,
      title: Text(
        "Teacher Pannel",
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20.0),
        textAlign: TextAlign.center,
      ),
      actions: <Widget>[_buildAvatar(context)],
    );
  }

  Widget _buildAvatar(BuildContext context) {
    return IconButton(
      iconSize: 40,
      padding: EdgeInsets.all(0),
      icon: CircleAvatar(
        backgroundColor: Colors.grey,
        child: CircleAvatar(
          radius: 16,
          backgroundImage: AssetImage(image1),
        ),
      ),
      onPressed: () {},
    );
  }
}
