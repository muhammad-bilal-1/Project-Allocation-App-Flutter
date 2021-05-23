import 'package:flutter/material.dart';

class projectlist extends StatelessWidget {
  static final String path = "lib/view_projects.dart";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
        titleSpacing: 0.0,
        elevation: 0.5,
        backgroundColor: Colors.white,
        title: Text(
          "Projects List",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20.0),
          textAlign: TextAlign.center,
        ),
      ),
      body: Lists(),
    );
  }
}

class Item {
  final String title;
  final String description;
  final String date;
  final String t_marks;
  final String group_size;
  final String image;

  Item(
      {this.title,
      this.description,
      this.date,
      this.t_marks,
      this.group_size,
      this.image});
}

class Lists extends StatelessWidget {
  final List<Item> _data = [
    Item(
        title: 'Title: Stock Price Prediction',
        description: "Description: A smart way to invest in trading stock",
        date: "dd/mm/year",
        t_marks: "Total Marks: 100",
        group_size: "4",
        image:
            "https://images.pexels.com/photos/672142/pexels-photo-672142.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
    Item(
        title: 'Title: Stock Price Prediction',
        description: "Description: A smart way to invest in trading stock",
        date: "dd/mm/year",
        t_marks: "Total Marks: 100",
        group_size: "4",
        image:
            "https://images.pexels.com/photos/1736222/pexels-photo-1736222.jpeg?cs=srgb&dl=adult-adventure-backpacker-1736222.jpg&fm=jpg"),
    Item(
        title: 'Title: Stock Price Prediction',
        description: "Description: A smart way to invest in trading stock",
        date: "dd/mm/year",
        t_marks: "Total Marks: 100",
        group_size: "4",
        image:
            "https://images.pexels.com/photos/62403/pexels-photo-62403.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(6),
      itemCount: _data.length,
      itemBuilder: (BuildContext context, int index) {
        Item item = _data[index];
        return Card(
          elevation: 3,
          child: Row(
            children: <Widget>[
              Container(
                height: 125,
                width: 110,
                padding:
                    EdgeInsets.only(left: 0, top: 10, bottom: 70, right: 20),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(item.image), fit: BoxFit.cover)),
                child: item.group_size == null
                    ? Container()
                    : Container(
                        color: Colors.black45,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              item.group_size,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal),
                            ),
                            Text(
                              "Group Size",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      item.title,
                      style: TextStyle(
                          color: Colors.black45,
                          fontWeight: FontWeight.w700,
                          fontSize: 17),
                    ),
                    Text(
                      item.description,
                      style: TextStyle(fontSize: 14, color: Colors.black87),
                    ),
                    Text(
                      item.t_marks,
                      style: TextStyle(fontSize: 14, color: Colors.black87),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          item.date,
                          style: TextStyle(fontSize: 13),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Date",
                          style: TextStyle(fontSize: 13),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
