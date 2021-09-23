import 'package:flutter/material.dart';
import 'package:my_demo_4/pages/page_one.dart';
import 'package:my_demo_4/pages/page_two.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PageOne(),
      routes: {
        PageOne.id:(context) => PageOne(),
        PageTwo.id:(context) => PageTwo()
      },
    );
  }
}

