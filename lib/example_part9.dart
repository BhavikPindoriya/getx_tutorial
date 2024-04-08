import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/Controller/slider_controller.dart';

class ExamplePart extends StatefulWidget {
  const ExamplePart({super.key});

  @override
  State<ExamplePart> createState() => _ExamplePartState();
}

class _ExamplePartState extends State<ExamplePart> {
  Slidercontroller exampleTwoController = Get.put(Slidercontroller());

  @override
  Widget build(BuildContext context) {
    print('Build  ui');
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx Tutorials'),
      ),
      body: Column(
        children: [
          Obx(() {
            return Container(
              height: 200,
              width: 200,
              color: Colors.red.withOpacity(exampleTwoController.opasity.value),
            );
          }),
          Obx(
            () {
              return Slider(
                  value: exampleTwoController.opasity.value,
                  onChanged: (Value) {
                    exampleTwoController.setOpacity(Value);
                  });
            },
          )
        ],
      ),
    );
  }
}
