import 'package:flutter/material.dart';
import 'package:flutter_dart_study/APage.dart';
import 'package:flutter_dart_study/BPage.dart';
import 'package:flutter_dart_study/CPage.dart';
import 'package:flutter_dart_study/SecondPage.dart';

//配置路由
final routes={
  '/router/a': (_) => new APage(),
  '/router/b': (_) => new BPage(),
  '/router/c': (_) => new CPage(),
  '/router/second': (context,{arguments}) => new SecondPage(arguments: arguments),
};
//固定写法
// ignore: top_level_function_literal_block
var onGenerateRoute=(RouteSettings settings) {
      // 统一处理
      final String name = settings.name;
      final Function pageContentBuilder = routes[name];
      if (pageContentBuilder != null) {
        if (settings.arguments != null) {
          final Route route = MaterialPageRoute(
              builder: (context) =>
                  pageContentBuilder(context, arguments: settings.arguments));
          return route;
        }else{
            final Route route = MaterialPageRoute(
              builder: (context) =>
                  pageContentBuilder(context));
            return route;
        }
      }
};