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

// ignore: must_be_immutable
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  List<Widget> _initData() {
    List<Widget> list = [];

    for (var i = 0; i < 10; i++) {
      list.add(Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black12),
        ),
        child: Column(children: [
          Image.network(
              "https://p4.img.cctvpic.com/photoAlbum/photo/2022/09/14/PHOT4syXqtkfqdFhZ7wwYUOe220914_1000x2000.jpg", fit: BoxFit.cover,),
          const SizedBox(height: 20),
          Text("文字$i", style: const TextStyle(fontSize: 16))
        ]),
      ));
    }
    return list.toList();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        padding: const EdgeInsets.all(10),
        crossAxisSpacing: 10, // 水平子widget之间的间距
        mainAxisSpacing: 10, // 垂直子widget之间的间距
        childAspectRatio: 1, // 宽高比
        crossAxisCount: 2,
        children: _initData());
  }
}
