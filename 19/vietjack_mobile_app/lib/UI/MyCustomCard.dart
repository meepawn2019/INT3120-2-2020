import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class MyCustomCard extends StatelessWidget {
  MyCustomCard({Key key, @required this.weekNumber, @required this.snapshot})
      : super(key: key);

  final int weekNumber;
  final List<dynamic> snapshot;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      key: PageStorageKey('MyCustomCard'),
      shrinkWrap: true,
      physics: ScrollPhysics(),
      itemCount: snapshot.length,
      itemBuilder: (BuildContext context, int index) {
        return MakeCard(index, snapshot);
      },
    );
  }
}

class MakeCard extends StatelessWidget {
  final int index;
  final dynamic snapshot;
  MakeCard(this.index, this.snapshot);
  @override
  Widget build(BuildContext context) {
    return Material(
        child: InkWell(
            onTap: () {},
            child: Container(
              height: 75,
              decoration: BoxDecoration(
                border:
                    Border(bottom: BorderSide(width: 0.5, color: Colors.black)),
              ),
              child: ListTile(
                // contentPadding:
                //     EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: new BoxDecoration(
                    border: Border.all(width: 2.5, color: Colors.grey[300]),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text((this.index + 1).toString(),
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.orange, fontSize: 25)),
                  ),
                ),
                title: Text(
                  snapshot[index]['title'].toString(),
                  style: TextStyle(
                      color: Colors.blue[600], fontWeight: FontWeight.bold),
                ),
                subtitle: Row(
                  children: <Widget>[
                    Icon(Icons.book, size: 20),
                    Text(snapshot[index]["exams"].toString() + " Bộ đề",
                        style: TextStyle(color: Colors.grey[500]))
                  ],
                ),
              ),
            )));
  }
}
