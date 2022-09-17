import 'package:flutter/material.dart';
import '../pages/tabs.dart';
import '../pages/news.dart';
import '../pages/dynamic.dart';
import '../pages/diolog.dart';

Map routes = {
  "/": (context) => const Dynamic(),
  "/news": (context, {arguments}) => NewsPage(arguments: arguments),
  "/tabs": (context) => const Tabs(),
  "/diolog": (context) => const Diolog(),
};

// ignore: prefer_function_declarations_over_variables
var onGenerateRoute = (RouteSettings setting) {
  final String? name = setting.name;
  final Function? pageContentBuilder = routes[name];
  if(pageContentBuilder != null) {
    if(setting.arguments != null) {
      final Route route = MaterialPageRoute(builder: (context) => pageContentBuilder(context, arguments: setting.arguments));
      return route;
    } else {
      final Route route = MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
  return null;
};