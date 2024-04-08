import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/screen_two.dart';

class ScreenOne extends StatefulWidget {
  var name;
  ScreenOne({super.key, this.name = ''});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen One' + Get.arguments[0]),
      ),
      body: Column(
        children: [
          TextButton(
              onPressed: () {
                Get.to(ScreenTwo());
              },
              child: const Text('Got To Next Screen'))
        ],
      ),
    );
  }
}
