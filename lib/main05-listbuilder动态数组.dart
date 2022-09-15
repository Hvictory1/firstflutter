import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.yellow),
        home: Scaffold(
            appBar: AppBar(title: const Text('我是标题')), body: MyHomePage()));
  }
}

// ignore: must_be_immutable
class MyHomePage extends StatelessWidget {
  List<String> list = [];
  MyHomePage({Key? key}) : super(key: key) {
    for (var i = 0; i < 10; i++) {
      list.add("我是第$i条数据11");
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return ListTile(title: Text(list[index]));
        });
  }
}
