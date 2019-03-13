import 'package:flutter/material.dart';



void main() {
  runApp(new MaterialApp(
    home: new MyStatelessWidget(),
  ));
}



class MyStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Hello")),
      body: new Container(
        padding: new EdgeInsets.all(20.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new MyCard(
            title: new Text("Записать видео", style: new TextStyle(fontSize: 25.0)),
            icon: new Icon(Icons.fiber_manual_record, size: 40.0, color: Colors.redAccent)),
            new MyCard(
              title: new Text("Просмотреть архив", style: new TextStyle(fontSize: 25)),
              icon: new Icon(Icons.archive, size: 40.0, color: Colors.greenAccent),
            ),
            new MyCard(
              icon: new Icon(Icons.person, size: 40.0, color: Colors.blueAccent),
              title: new Text("О программе", style: new TextStyle(fontSize: 25)),
            )
          ],
        ),
      )
    );
  }
}


class MyCard extends StatelessWidget {
  MyCard({this.title, this.icon});

  final Widget title;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      padding: new EdgeInsets.only(bottom: 10.0),
      child: new Card(
        child: new Container(
          padding: new EdgeInsets.all(15.0),
          child: new Column(
            children: <Widget>[
             this.title,
             this.icon
            ],
          )
        ),
      ),
    );
  }
}