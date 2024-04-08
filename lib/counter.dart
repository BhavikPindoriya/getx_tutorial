import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/Controller/counter_controller.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  final CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Getx'),
      ),
      body: Center(child: Obx(
        () {
          return Text(
            controller.counter.toString(),
            style: TextStyle(fontSize: 60),
          );
        },
      )),
      floatingActionButton: FloatingActionButton(onPressed: () {
        controller.incrmentCounter();
      }),
    );
  }
}
