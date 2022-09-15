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
            appBar: AppBar(title: const Text('我是标题')),
            body: Container(
                height: double.infinity,
                width: double.infinity,
                color: const Color.fromARGB(255, 203, 182, 176),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Iconcontainer(Icons.abc_rounded, color: Colors.black45),
                    Iconcontainer(Icons.ac_unit_outlined, color: Colors.yellow),
                    Iconcontainer(Icons.ac_unit_sharp,
                        color: const Color.fromARGB(255, 30, 102, 126))
                  ],
                ))));
  }
}
// 
// Row( // 外部没有container行是自适应的  相对于外部的容器
//     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//     crossAxisAlignment: CrossAxisAlignment.center,
//     children: [
//       Iconcontainer(Icons.abc_rounded, color: Colors.black45),
//       Iconcontainer(Icons.ac_unit_outlined, color: Colors.yellow)
//     ],
//   )

// 自定义Iconcontainer组件
class Iconcontainer extends StatelessWidget {
  Color color;
  IconData icon;

  Iconcontainer(this.icon, {Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        height: 80,
        width: 80,
        color: color,
        child: Icon(
          icon,
          color: Colors.white,
          size: 28,
        ));
  }
}
