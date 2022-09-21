import 'package:flutter/material.dart';
import './pages/news.dart';
import './routers/routers.dart';
import './pages/imagePage.dart';

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
  List<Widget> list = [];
  int _currentIndex = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    list = const [
      ImagePage(
          src: 'https://t7.baidu.com/it/u=963301259,1982396977&fm=193&f=GIF'),
      ImagePage(
        src: 'https://t7.baidu.com/it/u=963301259,1982396977&fm=193&f=GIF',
      ),
      ImagePage(
        src: 'https://t7.baidu.com/it/u=963301259,1982396977&fm=193&f=GIF',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(title: const Text('Title dev_test1')),
        body: Stack(children: [
          SizedBox(
              height: 200,
              child: PageView.builder(
                onPageChanged: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                  itemCount: 1000,
                  itemBuilder: (context, index) {
                    return list[index % list.length];
                  })),
          Positioned(
              left: 0, // left 0 right 0 可以沾满整行
              right: 0,
              bottom: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(3, (index) {
                  return Container(
                    margin: EdgeInsets.all(5),
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                        color:  index == _currentIndex ? Colors.blue : Colors.grey,
                        borderRadius: BorderRadius.circular(5)),
                  );
                }).toList(),
              ))
        ]),
      ),
    );
  }
}
