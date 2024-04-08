import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeSecond extends StatefulWidget {
  const HomeSecond({super.key});

  @override
  State<HomeSecond> createState() => _HomeSecondState();
}

class _HomeSecondState extends State<HomeSecond> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Tutorials'),
      ),
      body: Column(
        children: [
          TextButton(
              onPressed: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => ScreenOne(),
                //     ));
                // Get.to(ScreenOne(
                //   name: 'Bhavik Pindoriya',
                // ));
                Get.toNamed('/ScreenOne', arguments: [  
                  'Bhavik Pindoriya',
                  'My Name is this'
                ]);
              },
              child: const Text('Got to Next Screen'))
        ],
      ),
    );
  }
}
