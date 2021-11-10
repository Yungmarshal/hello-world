import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:test_app/pages/home.dart';

import './pages/home.dart';

void main() {
  //debugPaintSizeEnabled = true;
  //debugPaintBaselinesEnabled = true;
  //debugPaintPointersEnabled = true;

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowMaterialGrid: true,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        accentColor: Colors.blueAccent,
      ),
      home: HomePage(),
    );
  }
}
