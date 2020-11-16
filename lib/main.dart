import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Body(),
      ),
    );
  }
}

class Body extends StatefulWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  TextEditingController _controller;
  String fileName = 'test.txt';
  String load = '';
  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  Future<File> getLocal() async {
    var directory = await getApplicationDocumentsDirectory();
    return File('${directory.path}/$fileName');
  }

  //Future<File>
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          children: [
            TextField(
              controller: _controller,
            ),
            Row(
              children: [
                RaisedButton.icon(
                  icon: Icon(Icons.label_important_outline),
                  label: Text('Load'),
                  onPressed: () async {
                    var file = await getLocal();
                    load = await file.readAsString();
                    setState(() {});
                  },
                ),
                RaisedButton.icon(
                  icon: Icon(Icons.save),
                  label: Text('Save'),
                  onPressed: () async {
                    var file = await getLocal();
                    file.writeAsString(_controller.text);
                  },
                ),
                Text(load)
              ],
            )
          ],
        ),
      ),
    );
  }
}
