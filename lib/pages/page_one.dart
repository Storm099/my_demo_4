import 'package:flutter/material.dart';
import 'package:my_demo_4/pages/page_two.dart';

class PageOne extends StatefulWidget {
  static final String id = "page_one";

  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  String _name = "Button";
  int _age = 1;

  Future _openTwo() async {
    Map res =await Navigator.of(context).push(new MaterialPageRoute(
        builder: (context) => new PageTwo(name: "Flutter", age: 22)));

    if(res['name'] != null && res['age'] != null){
      setState(() {
        _name = res['name'];
        _age = res['age'];
      });
    }


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlatButton(
          onPressed: () {
            _openTwo();
          },
          color: Colors.green,
          child: Text("$_name $_age"),
        ),
      ),
    );
  }
}
