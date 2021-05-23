import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_allocation_app/Teacher/View_student.dart';
import 'Teacher/Add Teacher.dart';
import 'Teacher/Add_student.dart';
import 'Teacher/View_teacher.dart';
import 'package:random_string/random_string.dart';

class admin_page extends StatelessWidget {
  static final String path = "lib/admin_panel/dash3.dart";
  final String avatar = "img/1.jpg";
  final TextStyle whiteText = TextStyle(color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _buildBody(context),
      bottomNavigationBar: BottomAppBar(
        color: Colors.red,
        child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: SizedBox(
                  height: 50,
                  child: Material(
                    type: MaterialType.transparency,
                    child: InkWell(
                      onTap: () => {
                        null,
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.home,
                            color: Colors.black,
                          ),
                          Text(
                            'Home',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: 50,
                  child: Material(
                    type: MaterialType.transparency,
                    child: InkWell(
                      onTap: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => admin_page())),
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.person_add,
                            color: Colors.black,
                          ),
                          Text(
                            'Refer',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: 50,
                  child: Material(
                    type: MaterialType.transparency,
                    child: InkWell(
                      onTap: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => admin_page())),
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.history,
                            color: Colors.black,
                          ),
                          Text(
                            'History',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: 50,
                  child: Material(
                    type: MaterialType.transparency,
                    child: InkWell(
                      onTap: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => admin_page())),
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.person_outline,
                            color: Colors.black,
                          ),
                          Text(
                            'Profile',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ]),
      ),
    );
  }

  // Widget _buildBottomBar() {
  //   return BottomNavigationBar(
  //     backgroundColor: Colors.red,
  //     selectedItemColor: Colors.red,
  //     unselectedItemColor: Colors.grey,
  //     currentIndex: 0,
  //     onTap: (i) {},
  //     items: [
  //       BottomNavigationBarItem(
  //         icon: Icon(Icons.home),
  //         title: Text("Home"),
  //       ),
  //       BottomNavigationBarItem(
  //         icon: Icon(Icons.person_add),
  //         title: Text("Refer"),
  //       ),
  //       BottomNavigationBarItem(
  //         icon: Icon(Icons.history),
  //         title: Text("History"),
  //       ),
  //       BottomNavigationBarItem(
  //         icon: Icon(Icons.person_outline),
  //         title: Text("Profile"),
  //       ),
  //     ],
  //   );
  // }

  Widget _buildBody(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _buildHeader(),
          // const SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text(
              "Total Number of Students and Teacher",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
          ),
          Card(
            elevation: 4.0,
            color: Colors.white,
            margin: const EdgeInsets.all(16.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ListTile(
                    leading: Container(
                      alignment: Alignment.bottomCenter,
                      width: 45.0,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            height: 20,
                            width: 8.0,
                            color: Colors.grey.shade300,
                          ),
                          const SizedBox(width: 4.0),
                          Container(
                            height: 25,
                            width: 8.0,
                            color: Colors.grey.shade300,
                          ),
                          const SizedBox(width: 4.0),
                          Container(
                            height: 40,
                            width: 8.0,
                            color: Colors.blue,
                          ),
                          const SizedBox(width: 4.0),
                          Container(
                            height: 30,
                            width: 8.0,
                            color: Colors.grey.shade300,
                          ),
                        ],
                      ),
                    ),
                    title: Text("Teachers"),
                    subtitle: Text("18"),
                  ),
                ),
                VerticalDivider(),
                Expanded(
                  child: ListTile(
                    leading: Container(
                      alignment: Alignment.bottomCenter,
                      width: 45.0,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            height: 20,
                            width: 8.0,
                            color: Colors.grey.shade300,
                          ),
                          const SizedBox(width: 4.0),
                          Container(
                            height: 25,
                            width: 8.0,
                            color: Colors.grey.shade300,
                          ),
                          const SizedBox(width: 4.0),
                          Container(
                            height: 40,
                            width: 8.0,
                            color: Colors.red,
                          ),
                          const SizedBox(width: 4.0),
                          Container(
                            height: 30,
                            width: 8.0,
                            color: Colors.grey.shade300,
                          ),
                        ],
                      ),
                    ),
                    title: Text("Students"),
                    subtitle: Text("127"),
                  ),
                ),
              ],
            ),
          ),
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
                          color: Colors.redAccent,
                          icon: Icons.add_box,
                          // title: "Test",
                          data: "Add Teachers",
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AddTr()),
                      );
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
                          color: Colors.purple,
                          icon: Icons.view_agenda_outlined,
                          //title: "Test",
                          data: "View Teacher",
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ViewTr()),
                      );
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
                          color: Colors.blue,
                          icon: Icons.add_chart,
                          data: "Add Students",
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AddStd()),
                      );
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
                          color: Colors.orange,
                          icon: Icons.view_array_outlined,
//title: "Test",
                          data: "View Students",
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ViewStd()),
                      );
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

  Stack _buildHeader() {
    return Stack(
      children: <Widget>[
        ClipPath(
          clipper: WaveClipper2(),
          child: Container(
            child: Column(),
            width: double.infinity,
            height: 250,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0x22ff3a5a), Color(0x22fe494d)])),
          ),
        ),
        ClipPath(
          clipper: WaveClipper3(),
          child: Container(
            child: Column(),
            width: double.infinity,
            height: 250,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0x44ff3a5a), Color(0x44fe494d)])),
          ),
        ),
        ClipPath(
          clipper: WaveClipper1(),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 40,
                ),
                ListTile(
                  title: Text(
                    "Admin Dashboard",
                    style: whiteText.copyWith(
                        fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  trailing: CircleAvatar(
                    radius: 25.0,
                    backgroundImage: AssetImage(avatar),
                  ),
                ),
                const SizedBox(height: 10.0),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    "Admin Name",
                    style: whiteText.copyWith(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(height: 5.0),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    "Head of Department CUI,Vehari",
                    style: whiteText,
                  ),
                ),
              ],
            ),
            width: double.infinity,
            height: 250,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xffff3a5a), Color(0xfffe494d)])),
          ),
        ),
      ],
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
}

class WaveClipper1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height - 50);

    var firstEndPoint = Offset(size.width * 0.6, size.height - 29 - 50);
    var firstControlPoint = Offset(size.width * .25, size.height - 60 - 50);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondEndPoint = Offset(size.width, size.height - 60);
    var secondControlPoint = Offset(size.width * 0.84, size.height - 50);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class WaveClipper3 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height - 50);

    var firstEndPoint = Offset(size.width * 0.6, size.height - 15 - 50);
    var firstControlPoint = Offset(size.width * .25, size.height - 60 - 50);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondEndPoint = Offset(size.width, size.height - 40);
    var secondControlPoint = Offset(size.width * 0.84, size.height - 30);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class WaveClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height - 50);

    var firstEndPoint = Offset(size.width * .7, size.height - 40);
    var firstControlPoint = Offset(size.width * .25, size.height);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondEndPoint = Offset(size.width, size.height - 45);
    var secondControlPoint = Offset(size.width * 0.84, size.height - 50);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
