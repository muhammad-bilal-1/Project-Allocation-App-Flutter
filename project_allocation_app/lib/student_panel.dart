import 'package:flutter/material.dart';

class Stdlist extends StatelessWidget {
  final TextStyle whiteText = TextStyle(color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildStats(context),
    );
  }

  Widget _buildStats(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [
            _buildHeader(),
            PaginatedDataTable(
              header: Text('Projects List'),
              rowsPerPage: 4,
              columns: [
                DataColumn(
                    label: Text('#',
                        style: new TextStyle(fontWeight: FontWeight.bold))),
                DataColumn(
                    label: Text('Title',
                        style: new TextStyle(fontWeight: FontWeight.bold))),
                DataColumn(
                    label: Text('Project Description',
                        style: new TextStyle(fontWeight: FontWeight.bold))),
                DataColumn(
                    label: Text('Remaining Seats',
                        style: new TextStyle(fontWeight: FontWeight.bold))),
                DataColumn(
                    label: Text('Total Marks',
                        style: new TextStyle(fontWeight: FontWeight.bold))),
                DataColumn(
                    label: Text('Grouping Details',
                        style: new TextStyle(fontWeight: FontWeight.bold))),
                DataColumn(
                    label: Text('Selection Status',
                        style: new TextStyle(fontWeight: FontWeight.bold))),
                DataColumn(
                    label: Text('Choose',
                        style: new TextStyle(fontWeight: FontWeight.bold))),
              ],
              source: _DataSource(context),
            ),
          ],
        ));
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
                    colors: [Color(0x880673b3), Color(0x340673b3)])),
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
                    colors: [Color(0x6A0673B3), Color(0x4B0673B3)])),
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
                Padding(
                  padding: const EdgeInsets.only(left: 56.0),
                  child: Text(
                    "Student Dashboard",
                    style: whiteText.copyWith(
                        fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                ),
                const SizedBox(height: 10.0),
                Padding(
                  padding: const EdgeInsets.only(left: 56.0),
                  child: Text(
                    "CIIT-BSCS-B15-VHR",
                    style: whiteText.copyWith(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(height: 5.0),
              ],
            ),
            width: double.infinity,
            height: 250,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xff398acd), Color(0xff49c5fe)])),
          ),
        ),
      ],
    );
  }
}

class _Row {
  _Row(
      this.valueA,
      this.valueB,
      this.valueC,
      this.valueD,
      this.valueE,
      this.valueF,
      this.valueG,
      this.valueH,
      );

  final int valueA;
  final String valueB;
  final String valueC;
  final int valueD;
  final int valueE;
  final String valueF;
  final String valueG;
  final String valueH;

  bool selected = false;
}

class _DataSource extends DataTableSource {
  _DataSource(this.context) {
    _rows = <_Row>[
      _Row(
          1,
          'Home Automation using Android for Aged and Handicap Persons\nSupervisor Email: noureen@vu.edu.pk',
          'Project File\nDue Date of Selection: Mon 10 May, 2021',
          9,
          100,
          'Group Size: 2\nDue Date of Grouping: Mon 17 May, 2021',
          'Not Selected',
          'Choose Project'),
      _Row(
          2,
          'Control and Monitoring of a Remote Network in Client/Server environment\nSupervisor Email: asimmehmood@vu.edu.pk',
          'Project File\nDue Date of Selection: Mon 10 May, 2021',
          0,
          100,
          'Group Size: 2\nDue Date of Grouping: Mon 17 May, 2021',
          'Not Selected',
          'Choose Project'),
      _Row(
          3,
          'School Management System\nSupervisor Email: ahmed@vu.edu.pk',
          'Project File\nDue Date of Selection: Mon 10 May, 2021',
          2,
          100,
          'Group Size: 4\nDue Date of Grouping: Mon 17 May, 2021',
          'Not Selected',
          'Choose Project'),
      _Row(
          4,
          'Mask Detection Application\nSupervisor Email: alia@vu.edu.pk',
          'Project File\nDue Date of Selection: Mon 10 May, 2021',
          1,
          100,
          'Group Size: 2\nDue Date of Grouping: Mon 17 May, 2021',
          'Not Selected',
          'Choose Project'),
    ];
  }

  final BuildContext context;
  List<_Row> _rows;

  int _selectedCount = 0;

  @override
  DataRow getRow(int index) {
    assert(index >= 0);
    if (index >= _rows.length) return null;
    final row = _rows[index];
    return DataRow.byIndex(
      index: index,
      selected: row.selected,
      // onSelectChanged: (value) {
      // if (row.selected != value) {
      //   _selectedCount += value ? 1 : -1;
      //   assert(_selectedCount >= 0);
      //   row.selected = value;
      //   notifyListeners();
      // }
      // },
      cells: [
        DataCell(Text(row.valueA.toString())),
        DataCell(Text(row.valueB)),
        DataCell(Text(row.valueC)),
        DataCell(Text(row.valueD.toString())),
        DataCell(Text(row.valueE.toString())),
        DataCell(Text(row.valueF)),
        DataCell(Text(row.valueG)),
        DataCell(Text(row.valueH)),
      ],
    );
  }

  @override
  int get rowCount => _rows.length;

  @override
  bool get isRowCountApproximate => false;

  @override
  int get selectedRowCount => _selectedCount;
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
