import 'package:flutter/material.dart';
import './pages/news.dart';

void main() {
  runApp(const MaterialApp(
    title: 'donghua',
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const HomePage();
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text('我是首页'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          ElevatedButton(
              onPressed: (() {
                print('111');
                // 跳转路由
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const NewsPage(title: '我是传过来的参数');
                    }),
                );
              }),
              child: const Text('新闻'))
        ]),
      ),
    );
  }
}
