import 'package:flutter/material.dart';

/**
 * 动态数组列表build的构建方式
 */

class DynamicBuildHomeContent extends StatelessWidget {

  List list=new List();
  DynamicBuildHomeContent(){
    for(var i=1;i<=20;i++){
      this.list.add('我是第$i条');
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
        return ListTile(
          title: Text(this.list[index]),
        );
    });
  }
}
