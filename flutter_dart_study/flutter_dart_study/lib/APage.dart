import 'package:flutter/material.dart';
import 'package:flutter_dart_study/BPage.dart';

class APage extends StatefulWidget {
  @override
  _APageState createState() => _APageState();
}

class _APageState extends State<APage> {

  String result;
  @override
  void initState() {
    result = '';
  }

  loadNextCallbackArgs(dynamic result) {
    setState(() {
      this.result = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'A页面'
        )
      ),
      body:  Column(
        children: <Widget>[
          Container(
            alignment: Alignment.topCenter,
            child: Text(
                '跳转进入到了A页面'
            ),
          ),
          Expanded(
            child: GestureDetector(
              child: Container(
                color: Colors.red,
                alignment: Alignment.center,
                child: Text(
                    '跳转到B',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    letterSpacing: 5
                  ),
                ),
              ),
              onTap: (){
                //接收上一个页面返回的参数
//                Navigator.push(context, MaterialPageRoute(builder: (context) => BPage())).then((value) => loadNextCallbackArgs(value));
                //静态路由接收下一个页面传递的返回值
                Navigator.pushNamed(context, '/router/b').then((value) => loadNextCallbackArgs(value));
              },
            ),
          ),
          Expanded(
            child: Container(
              child: Text(
                  '${result}'
              ),
            ),
          )
        ],
      ),
    );
  }

}
