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

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ListTile(leading: Icon(Icons.home), title: Text('我是一个列表')),
        Divider(),
        ListTile(leading: Icon(Icons.assessment, color: Colors.green,), title: Text('我的订单')),
        Divider(),
        ListTile(title: Text('woshi yigeliebaio', style: TextStyle(color: Colors.yellow))),
        ListTile(title: Text('woshi yigeliebaio')),
        ListTile(title: Text('woshi yigeliebaio'))
      ],
    );
  }
}
