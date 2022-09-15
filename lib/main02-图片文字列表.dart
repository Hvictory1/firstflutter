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
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      children: [
        ListTile(
          leading: Image.network(
              "https://p5.img.cctvpic.com/photoAlbum/photo/2022/09/13/PHOTWa5fQdKtBvUGbeh4CZjf220913_1000x2000.jpg"),
          title: const Text("喜迎二十大 彪炳史册的人间奇迹  稳预期  观点"),
          subtitle: const Text("科创合肥  深化科技体制改革  海报"),
        )
      ],
    );
  }
}
