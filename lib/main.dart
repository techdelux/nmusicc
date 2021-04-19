import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:wbst/screens/homePage.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WBST',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        backgroundColor: Colors.black,
        bottomAppBarColor: Colors.black,
        cardColor: Colors.blueGrey[800],
      ),
      home: HomePage(),
    );
  }
}
