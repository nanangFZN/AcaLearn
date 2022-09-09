import 'package:flutter/material.dart';

class ChattPage extends StatefulWidget {
  ChattPage({Key? key}) : super(key: key);

  @override
  State<ChattPage> createState() => _ChattPageState();
}

class _ChattPageState extends State<ChattPage> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text("CHatt")
          ]
        ),
      ),
    );
  }
}