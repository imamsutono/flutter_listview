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
  final List<String> data = new List<String>.generate(10, (i) => "Data ke $i");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "ListView"
          ),
        ),
        body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, i) {
            return new ListTile(
              leading: Icon(Icons.sentiment_very_satisfied),
              title: Text("${data[i]}"),
            );
          },
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
