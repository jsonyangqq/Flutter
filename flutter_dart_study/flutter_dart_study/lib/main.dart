import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dart_study/APage.dart';
import 'package:flutter_dart_study/BPage.dart';
import 'package:flutter_dart_study/CPage.dart';
import 'package:flutter_dart_study/FirstPage.dart';
import 'package:flutter_dart_study/SecondPage.dart';
import 'package:flutter_dart_study/ThreePage.dart';
import 'package:flutter_dart_study/routes/Routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      onGenerateRoute: onGenerateRoute,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            GestureDetector(
              child: Container(
                child: Text(
                  '跳转页面A'
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, "/router/a");
//                Navigator.of(context).pushNamed("/router/a");
              },
            ),
            RaisedButton(
              color: Colors.blue,
              colorBrightness: Brightness.light,  //颜色亮度
              child: Text(
                  '跳转页面A',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed("/router/a");
              },
            ),
            RaisedButton(
              color: Colors.blue,
              colorBrightness: Brightness.light,  //颜色亮度
              child: Text(
                '动态路由普通跳转页面First',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.push(context, new MaterialPageRoute(builder: (context) {
                  return new FirstPage();
                }));
              },
            ),
            RaisedButton(
              color: Colors.blue,
              colorBrightness: Brightness.light,  //颜色亮度
              child: Text(
                '动态路由切换动画跳转页面First',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
//                Navigator.push(context, new CupertinoPageRoute(builder: (context) {
//                  return new FirstPage();
//                }));
                  Navigator.push(context, PageRouteBuilder(
                    transitionDuration: Duration(milliseconds: 500), //动画时间为500毫秒
                    pageBuilder: (BuildContext context, Animation animation,
                    Animation secondaryAnimation) {
                      return new FadeTransition( //使用渐隐渐入过渡,
                    opacity: animation,
                    child: FirstPage()
                    );
                  }));
              },
            ),
            RaisedButton(
              color: Colors.blue,
              colorBrightness: Brightness.light,  //颜色亮度
              child: Text(
                '命名路由跳转页面传值',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/router/second',arguments: {
                  "name": "张三",
                  "age": 18
                });
              },
            ),
            RaisedButton(
              color: Colors.blue,
              colorBrightness: Brightness.light,  //颜色亮度
              child: Text(
                '构造路由传参',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context) {
                  return new ThreePage(title: '这是一个标题',name: '这是一个名称',);
                }));
              },
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        alignment: Alignment.bottomCenter,
        child: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
