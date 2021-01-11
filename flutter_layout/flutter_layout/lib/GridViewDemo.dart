
import 'package:flutter/material.dart';

import 'res/ListData.dart';

class GridVIewDemo extends StatelessWidget {

  Widget _getListData (context,index) {
    return Container(
      child:Column(
        children: <Widget>[
          Image.network(listData[index]['imageUrl']),
          SizedBox(height: 12),
          Text(
            listData[index]['title'],
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20
            ),
          )
        ],

      ),
      decoration: BoxDecoration(
          border: Border.all(
              color:Color.fromRGBO(233, 233,233, 0.9),
              width: 1
          )
      ),

      // height: 400,  //设置高度没有反应
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(

      //注意
      gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing:10.0 ,   //水平子 Widget 之间间距
        mainAxisSpacing: 10.0,    //垂直子 Widget 之间间距
        crossAxisCount: 2,  //一行的 Widget 数量
      ),
      itemCount: listData.length,
      itemBuilder:this._getListData,
    );;
  }
}
