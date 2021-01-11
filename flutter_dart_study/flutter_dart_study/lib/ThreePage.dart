
import 'package:flutter/material.dart';

class ThreePage extends StatefulWidget {

  String title;
  String name;


  ThreePage({Key key,this.title, this.name}) : super(key: key);

  @override
  _ThreePageState createState() => _ThreePageState();
}

class _ThreePageState extends State<ThreePage> {

  String title;
  String name;

  @override
  void initState() {
    this.title = widget.title;
    this.name = widget.name;
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.redAccent,
      child: Text(
        '''${title},
           ${name}
        ''',
        style: TextStyle(
            fontSize: 20,
            fontFamily: "微软雅黑",
            color: Colors.white
        ),
      ),
    );
  }


}
