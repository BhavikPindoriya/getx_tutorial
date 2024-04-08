import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/Controller/imagepicker_controller.dart';

class ExampleTwelve extends StatefulWidget {
  const ExampleTwelve({super.key});

  @override
  State<ExampleTwelve> createState() => _ExampleTwelveState();
}

class _ExampleTwelveState extends State<ExampleTwelve> {
  ImagePickerController controller = Get.put(ImagePickerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Getx Tutorial'),
        ),
        body: Obx(() {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: CircleAvatar(
                    radius: 40,
                    backgroundImage: controller.imagePath.isNotEmpty
                        ? FileImage(File(controller.imagePath.toString()))
                        : null),
              ),
              TextButton(
                  onPressed: () {
                    controller.getImage();
                  },
                  child: Text('Pick Image'))
            ],
          );
        }));
  }
}
