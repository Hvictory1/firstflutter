import 'package:flutter/material.dart';

class Cartgory extends StatefulWidget {
const Cartgory({Key? key}) : super(key: key);

  @override
  State<Cartgory> createState() => _CartgoryState();
}

class _CartgoryState extends State<Cartgory> {
  @override
  Widget build(BuildContext context) {
    return const Text("动态");
  }
}