import 'package:flutter/material.dart';
import './pages/tabs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const HomePage();
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  // 组件初始化生命周期
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('我是标题'),
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              print("左侧图标");
            },
          ),
          actions: [
            IconButton(onPressed: (() {}), icon: const Icon(Icons.search))
          ],
          bottom: TabBar(controller: _tabController, tabs: const [
            Tab(child: Text('关注')),
            Tab(child: Text('沟通')),
            Tab(child: Text('热门')),
          ]),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            ListView(children: const [
              ListTile(
                title: Text("我是关注列表"),
              )
            ]),
            ListView(children: const [
              ListTile(
                title: Text("我是沟通列表"),
              )
            ]),
            ListView(children: const [
              ListTile(
                title: Text("我是热门列表"),
              )
            ]),
          ],
        ),
      ),
    );
  }
}
