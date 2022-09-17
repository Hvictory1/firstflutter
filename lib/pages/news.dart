import 'package:flutter/material.dart';

class NewsPage extends StatefulWidget {
  // final String title;
  final Map arguments;
  // const NewsPage({Key? key, this.title = '新闻', args}) : super(key: key);
  const NewsPage({Key? key, required this.arguments}) : super(key: key);

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  void initState() {
    super.initState();
    print(widget.arguments);
  }
  @override
  Widget build(BuildContext context) {

    // Navigator.pop(context) 返回上一页
    return Scaffold(
      appBar: AppBar(title: Text('新闻'),),
      body: const Center(child: Text('新闻页面'),),
    );
  }
}