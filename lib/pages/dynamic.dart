import 'package:flutter/material.dart';

class Dynamic extends StatefulWidget {
  final String title;
  const Dynamic({Key? key, this.title = '动态'}) : super(key: key);

  @override
  State<Dynamic> createState() => _DynamicState();
}

class _DynamicState extends State<Dynamic> {
  @override
  Widget build(BuildContext context) {
    // Navigator.pop(context) 返回上一页
    return Scaffold(
      appBar: AppBar(
        title: Text('动态'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: (() {
                  // 跳转路由
                  Navigator.pushNamed(context, "/news",
                      arguments: {"title": "我是命名路由传值"});
                }),
                child: const Text('命名路由跳转')),
            ElevatedButton(
                onPressed: (() {
                  // 跳转路由
                  Navigator.pushNamed(context, "/diolog");
                }),
                child: const Text('Diolog演示')),
          ]),)
    );
  }
}
