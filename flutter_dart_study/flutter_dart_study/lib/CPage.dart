
import 'package:flutter/material.dart';

class CPage extends StatefulWidget {
  @override
  _CPageState createState() => _CPageState();
}

class _CPageState extends State<CPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
              'C页面'
          )
      ),
      body:  Column(
        children: <Widget>[

          Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: 100,
            color: Colors.greenAccent,
            child: Text(
              '跳转进入到了C页面',
              style: TextStyle(
                  fontSize: 30
              ),
            ),
          ),
          GestureDetector(
            child: Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 100,
              color: Colors.lightBlueAccent,
              child: Text(
                '从C页面返回到B页面',
                style: TextStyle(
                    fontSize: 30
                ),
              ),
            ),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
          GestureDetector(
            child: Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 100,
              color: Colors.redAccent,
              child: Text(
                '从C页面返回到A页面',
                style: TextStyle(
                    fontSize: 30
                ),
              ),
            ),
            onTap: () {
              Navigator.of(context).popAndPushNamed("/router/a");
            },
          )

        ],
      ),
    );
  }
}
