import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/Controller/switch_controller.dart';

class ExampleTen extends StatefulWidget {
  const ExampleTen({super.key});

  @override
  State<ExampleTen> createState() => _ExampleTenState();
}

class _ExampleTenState extends State<ExampleTen> {
  @override
  Widget build(BuildContext context) {
    SwitchController switchController = Get.put(SwitchController());
    bool notification = false;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Getx Tutorials"),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Notification'),
              Obx(
                () => Switch(
                  value: switchController.notification.value,
                  onChanged: (Value) {
                    switchController.setNotification(Value);
                  },
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
