import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "ListView"
          ),
        ),
        body: ListView(
          children: <Widget>[
            CardView(),
            CardView(),
            CardView(),
          ],
        ),
      ),
    );
  }
}

class CardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Row(
          children: <Widget>[
            Icon(FontAwesomeIcons.anchor),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Android", 
                      style: TextStyle(fontSize: 16.0),
                    ),
                    Text("Keterangan untuk Android")
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
