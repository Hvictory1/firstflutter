import 'package:flutter/material.dart';

import './tabs/cartgory.dart';
import './tabs/index.dart';
import './tabs/setting.dart';

class Tabs extends StatefulWidget {
  const Tabs({Key? key}) : super(key: key);
  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _initIndex = 0;
  final List<Widget> _list = const [
    Index(),
    Cartgory(),
    Setting(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('我是标题')),
      body: _list[_initIndex],
      floatingActionButton: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color:Colors.yellow,
          borderRadius: BorderRadius.circular(30),
        ),
        padding: EdgeInsets.all(3),
        margin: EdgeInsets.only(top:5),
        child: FloatingActionButton(
            backgroundColor: _initIndex == 1 ? Color.fromARGB(115, 200, 41, 41) : Color.fromARGB(221, 61, 145, 83),
            onPressed: () {
              setState(() {
                _initIndex = 1;
              });
            }, child: const Icon(Icons.add)),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _initIndex,
        // type: BottomNavigationBarType.fixed, // 底部配3个以上时需要加上
        onTap: (index) {
          setState(() {
            _initIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页'),
          BottomNavigationBarItem(icon: Icon(Icons.dangerous), label: '动态'),
          BottomNavigationBarItem(icon: Icon(Icons.woman), label: '我的'),
        ],
      ),
    );
  }
}
