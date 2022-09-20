import 'package:flutter/material.dart';

class Diolog extends StatefulWidget {
  const Diolog({Key? key}) : super(key: key);

  @override
  State<Diolog> createState() => _DiologState();
}

class _DiologState extends State<Diolog> {
  void _alertDiolog() async {
    var result = await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
              title: Text("alertDiolog"),
              content: Text("我是内容"),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop("ok");
                    },
                    child: const Text("ok")),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop("off");
                    },
                    child: const Text("off")),
              ]);
        });
    print(result);
  }

  void _simpleDiolog() async {
    var result = await showDialog(
        barrierDismissible: false, // 点击灰色区域不会关闭弹窗
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: Text('选择语言1'),
            children: [
              SimpleDialogOption(
                onPressed: () {
                  Navigator.of(context).pop("汉语");
                },
                child: Text('中文'),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.of(context).pop("英文");
                },
                child: Text('英文'),
              ),
            ],
          );
        });
    print(result);
  }

  void _modelBottomSheet() {
    showModalBottomSheet(context: context, builder: (context) {
      return Text("底部弹出框");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Diolog'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: _alertDiolog, child: const Text('alter弹出Diolog')),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: _simpleDiolog, child: Text('alter_simpleDiolog弹出框')),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(onPressed: _modelBottomSheet, child: Text('modelbottomsheet')),
        ],
      )),
    );
  }
}
