import 'package:flutter/material.dart';

class HomeContent extends StatefulWidget {
  @override
  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Show '),
      ),
      body: Container(
          height:200.0,
          margin: EdgeInsets.all(5),
          child:ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                width:180.0,
                color: Colors.lightBlue,
              ),
              Container(
                  width:180.0,
                  color: Colors.amber,
                  child: ListView(
                    children: <Widget>[
                      Image.network(
                          'http://img3.mukewang.com/5fe4431000014bc405400304.jpg'
                      ),
                      SizedBox(height: 16.0),
                      Text('这是一个文本信息',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16.0
                        ),
                      )
                    ],
                  ),
              ),
              Container(
                width:180.0,
                color: Colors.deepOrange,
              ),
              Container(
                width:180.0,
                color: Colors.deepPurpleAccent,
              ),
            ],
          )
      ),
    );
  }
}

