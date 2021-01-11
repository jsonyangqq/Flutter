import 'package:flutter/material.dart';

class DynamicHomeContent extends StatelessWidget {



  //自定义方法
  List<Widget> _getData(){
    List<Widget> list=new List();
    for(var i=1;i<=20;i++){
      list.add(ListTile(
        leading: Icon(Icons.image),
        title: Text("我是$i列表"),
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _getData(),
    );
  }

}
