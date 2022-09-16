import 'package:flutter/material.dart';
import '../../tools/KeepAliveWrapper.dart';

class Index extends StatefulWidget {
  const Index({Key? key}) : super(key: key);

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _tabController.addListener(() {  // 监听t_tabController改变事件
      // print(_tabController.index);
      if(_tabController.animation!.value == _tabController.index) {
        print(_tabController.index);
      }
     });
  }

//页面销毁时触发
  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40),
        child: AppBar(
            elevation: 1,
            backgroundColor: Colors.white,
            title: SizedBox(
                child: TabBar(
                    controller: _tabController,
                    onTap: (index) { // 只能监听点击事件 无法监听滑动事件

                    },
                    indicatorColor: Colors.red,
                    labelColor: Colors.red,
                    unselectedLabelColor: Colors.black,
                    indicatorSize: TabBarIndicatorSize.label,
                    tabs: const [
                      Tab(child: Text('关注')),
                      Tab(child: Text('关注1')),
                      Tab(child: Text('关注2')),
                      Tab(child: Text('关注3')),
                    ]),
                height: 30)),
      ),
      body: TabBarView(controller: _tabController, children: [
        KeepAliveWrapper(
          child: ListView(
            children: const [
              ListTile(title: Text('1')),
              ListTile(title: Text('1212')),
              ListTile(title: Text('1212')),
              ListTile(title: Text('1212')),
              ListTile(title: Text('1212')),
              ListTile(title: Text('12143512')),
              ListTile(title: Text('1212')),
              ListTile(title: Text('1212')),
              ListTile(title: Text('1212')),
              ListTile(title: Text('12t5r512')),
              ListTile(title: Text('1212')),
              ListTile(title: Text('121dfsdf2')),
              ListTile(title: Text('121252')),
              ListTile(title: Text('1212')),
              ListTile(title: Text('1212g')),
              ListTile(title: Text('121s2hn342')),
            ],
          ),
        ),
        Text('woshi关注1'),
        Text('woshi关注2'),
        Text('woshi关注3'),
      ]),
    );
  }
}
