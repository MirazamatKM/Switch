import 'package:app18/info.dart';
import 'package:flutter/material.dart';

class Test2 extends StatefulWidget {
  const Test2({ Key? key }) : super(key: key);

  @override
  State<Test2> createState() => _Test2State();
}

class _Test2State extends State<Test2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
              width: double.infinity,
              height: 220,
              color: Ranglar.value ? Ranglar.qora : Ranglar.oq,
            ),
    );
  }
}