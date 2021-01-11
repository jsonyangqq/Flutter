import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {

  Map arguments;


  SecondPage({Key key, this.arguments}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {

  String name;
  int age;


  @override
  void initState() {
    this.name = widget.arguments["name"];
    this.age = widget.arguments["age"];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      color: Colors.redAccent,
      child: Text(
        '我名叫${name},今年$age岁啦！',
        style: TextStyle(
          fontSize: 20,
          fontFamily: "微软雅黑",
          color: Colors.white
        ),
      ),
    );
  }
}
