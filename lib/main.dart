import 'package:flutter/material.dart';
import './pages/news.dart';
import './routers/routers.dart';

void main() {
  // ignore: prefer_const_constructors
  runApp(MaterialApp(
    title: 'donghua',
    home: const MyApp(),
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
          appBar: AppBar(title: const Text('Title')),
          body: PageView(scrollDirection: Axis.vertical, children: const [
            Center(
              child: Text('第一屏'),
            ),
            Center(
              child: Text('第一屏2'),
            ),
            Center(
              child: Text('第一屏3'),
            ),
            Center(
              child: Text('第一屏4'),
            ),
          ]),
        ));
  }
}
