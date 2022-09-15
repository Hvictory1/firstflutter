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
    return ListView(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton(
              onPressed: (() {
                print('ElevatedButton');
              }),
              child: const Text("普通按钮")),
          TextButton(onPressed: () {}, child: const Text("文本按钮")),
          const OutlinedButton(onPressed: null, child: Text("带边框按钮")),
          const IconButton(onPressed: null, icon: Icon(Icons.ac_unit_rounded)),
        ],
      ),
      const SizedBox(height: 20),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.send),
              label: const Text('发送')),
        ],
      ),
      const SizedBox(height: 20),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.amber),
                  foregroundColor: MaterialStateProperty.all(
                      const Color.fromARGB(115, 84, 38, 38)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)))),
              onPressed: () {},
              child: const Text("颜色按钮")),
          SizedBox(
            height: 90,
            width: 90,
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.amber),
                    foregroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(115, 84, 38, 38)),
                    shape: MaterialStateProperty.all(const CircleBorder(
                        side: BorderSide(
                            color: Color.fromARGB(255, 58, 43, 133))))),
                onPressed: () {},
                child: const Text("颜色按钮")),
          )
        ],
      ),
      Row(
        children: [
          Expanded(
              flex: 1,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.amber),
                      foregroundColor: MaterialStateProperty.all(
                          const Color.fromARGB(115, 84, 38, 38))),
                  onPressed: () {},
                  child: const Text("颜色按钮")))
        ],
      )
    ]);
  }
}