import 'package:flutter/material.dart';
import './res/listData.dart';

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
            appBar: AppBar(title: const Text('我是标题')), body: const HomePage()));
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 获取屏幕尺寸
    final size = MediaQuery.of(context).size;
    print(size);
    return Stack(children: [
      ListView(
        padding: EdgeInsets.only(top: 44),
        children: const [
          ListTile(
              title: Text("我是一个列表1"),
              textColor: Color.fromARGB(255, 89, 145, 191)),
          ListTile(
              title: Text("我是一个列表2"),
              textColor: Color.fromARGB(255, 72, 166, 38)),
          ListTile(
              title: Text("我是一个列表3"),
              textColor: Color.fromARGB(255, 34, 136, 88)),
          ListTile(
              title: Text("我是一个列表4"),
              textColor: Color.fromARGB(255, 34, 136, 88)),
          ListTile(
              title: Text("我是一个列表5"),
              textColor: Color.fromARGB(255, 34, 136, 88)),
          ListTile(
              title: Text("我是一个列表6"),
              textColor: Color.fromARGB(255, 34, 136, 88)),
          ListTile(
              title: Text("我是一个列表6"),
              textColor: Color.fromARGB(255, 34, 136, 88)),
          ListTile(
              title: Text("我是一个列表6"),
              textColor: Color.fromARGB(255, 34, 136, 88)),
          ListTile(
              title: Text("我是一个列表6"),
              textColor: Color.fromARGB(255, 34, 136, 88)),
          ListTile(
              title: Text("我是一个列表6"),
              textColor: Color.fromARGB(255, 34, 136, 88)),
          ListTile(
              title: Text("我是一个列表6"),
              textColor: Color.fromARGB(255, 34, 136, 88)),
          ListTile(
              title: Text("我是一个列表6"),
              textColor: Color.fromARGB(255, 34, 136, 88)),
          ListTile(
              title: Text("我是一个列表6"),
              textColor: Color.fromARGB(255, 34, 136, 88)),
          ListTile(
              title: Text("我是一个列表6"),
              textColor: Color.fromARGB(255, 34, 136, 88)),
          ListTile(
              title: Text("我是一个列表6"),
              textColor: Color.fromARGB(255, 34, 136, 88)),
        ],
      ),
      Positioned(
          left: 0,
          top: 0,
          width: size.width, // 配置子元素的宽度和高度
          height: 44,
          child: Container(
              alignment: Alignment.center,
              color: Color.fromARGB(255, 14, 15, 14),
              child: const Text(
                "二级导航",
                style: TextStyle(color: Color.fromARGB(95, 241, 241, 240)),
              )))
    ]);
  }
}
