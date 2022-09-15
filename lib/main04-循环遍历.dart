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
            appBar: AppBar(title: const Text('我是标题')),
            body: const MyHomePage()));
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  List<Widget> _initData() {
    const a = [1, 2, 3];

    var list = a.map((value) {
      return ListTile(title: Text("biao${value}"));
    });
    return list.toList();
  }
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _initData(),
    );
  }
}
