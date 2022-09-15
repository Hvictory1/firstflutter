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
    return SizedBox(
        height: 120,
        child: ListView(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
          scrollDirection: Axis.horizontal, // 水平
          children: [
            Container(
              width: 120,
              decoration: const BoxDecoration(color: Colors.white),
              child: Column(children: [
                SizedBox(
                  height: 80,
                  child: Image.network(
                      "https://p3.img.cctvpic.com/photoAlbum/photo/2022/09/14/PHOTfKnuhDYjuHlEtyL9GOCN220914_1000x2000.jpg",
                      fit: BoxFit.cover),
                ),
                const Text("表题", textAlign: TextAlign.center)
              ]),
            ),
            Container(
              width: 120,
              decoration: const BoxDecoration(color: Colors.yellow),
            ),
            Container(
              width: 120,
              decoration:
                  const BoxDecoration(color: Color.fromARGB(255, 83, 41, 38)),
            ),
            Container(
              width: 120,
              decoration:
                  const BoxDecoration(color: Color.fromARGB(255, 69, 99, 130)),
            ),
            Container(
              width: 120,
              decoration:
                  const BoxDecoration(color: Color.fromARGB(255, 101, 23, 49)),
            ),
            Container(
              width: 120,
              decoration:
                  const BoxDecoration(color: Color.fromARGB(255, 115, 38, 175)),
            ),
          ],
        ));
  }
}
