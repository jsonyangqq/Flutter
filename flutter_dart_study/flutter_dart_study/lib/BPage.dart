import 'package:flutter/material.dart';
import 'package:flutter_dart_study/CPage.dart';

class BPage extends StatefulWidget {
  @override
  _BPageState createState() => _BPageState();
}

class _BPageState extends State<BPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
              'B页面'
          )
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 60,
            color: Colors.red,
            alignment: Alignment.center,
            child: Text(
                '跳转进入到了B页面',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white
                )
            ),
          ),
          Expanded(
            child: GestureDetector(
              child: Container(
                width: double.infinity,
                height: 60,
                color: Colors.green,
                alignment: Alignment.center,
                child: Text(
                  '从B返回到A页面',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white
                    )
                ),
              ),
              onTap: () {
                Navigator.of(context).pop("这是密号");
              },
            ),
          ),
          Expanded(
            child: GestureDetector(
              child: Container(
                width: double.infinity,
                height: 60,
                color: Colors.greenAccent,
                alignment: Alignment.center,
                child: Text(
                    '从B跳转到C页面',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white
                    )
                ),
              ),
              onTap: () {
                Navigator.of(context).pushNamed("/router/c");
              },
            ),
          ),
          Expanded(
            child: GestureDetector(
              child: Container(
                color: Colors.lightBlueAccent,
                alignment: Alignment.center,
                child: Text(
                    '从B使用pushReplacementNamed跳转到C页面',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                  ),
                ),
              ),
              onTap: () {
                  Navigator.of(context).pushReplacementNamed("/router/c");
              },
            ),
          ),
          Expanded(
            child: GestureDetector(
              child: Container(
                color: Colors.purple,
                alignment: Alignment.center,
                child: Text(
                  '从B使用pushNamedAndRemoveUntil跳转到C页面',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white
                  ),
                ),
              ),
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(context,'/router/c',ModalRoute.withName('/router/a'));
              },
            ),
          )
        ],
      ),
    );
  }
}
