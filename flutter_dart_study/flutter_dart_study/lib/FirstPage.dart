import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('页面First'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            height: 60,
            width: double.infinity,
            color: Colors.redAccent,
            child: Text(
              '这是动态路由跳转的页面First',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white
              ),
            ),
          )

        ],
      ),
    );
  }
}
