import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {

  final String name;
  final int age;
  PageTwo({this.name,this.age});
  static final String id = "page_two";

  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlatButton(

          onPressed: (){
            Navigator.of(context).pop({'name':"Dart",'age':33});
          },

          color: Colors.red,
          child: Text("${widget.name} ${widget.age}"),
        )
      ),
    );
  }
}
