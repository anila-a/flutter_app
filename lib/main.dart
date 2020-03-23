import 'package:flutter/material.dart';
import 'package:cdli_flutter/screens/grid.dart';
import 'package:cdli_flutter/screens/collection.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new MyHomePage(title: "CDLI tablet"),
      debugShowCheckedModeBanner: false,
    );
  }
}
