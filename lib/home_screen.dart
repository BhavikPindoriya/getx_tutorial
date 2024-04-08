import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX'),
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: const Text('Getx Dialog alert'),
              onTap: () {
                Get.defaultDialog(
                  title: 'Delete Chat',
                  titlePadding: EdgeInsets.only(top: 20),
                  contentPadding: EdgeInsets.all(20),
                  middleText: 'Are you sure you want to delete this chat?',
                  confirm: TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: const Text('Ok')),
                  cancel: TextButton(onPressed: () {}, child: Text('Close')),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('Getx Bottom sheet'),
              subtitle: const Text('Getx dialog aleart twith getx'),
              onTap: () {
                Get.bottomSheet(Container(
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      ListTile(
                        leading: const Icon(Icons.light_mode),
                        title: const Text('light Theme'),
                        onTap: () {
                          Get.changeTheme(ThemeData.light());
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.dark_mode),
                        title: const Text('Dark Theme'),
                        onTap: () {
                          Get.changeTheme(ThemeData.dark());
                        },
                      )
                    ],
                  ),
                ));
              },
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Get.snackbar('Bhavik Pindoriya', 'Hello How are you',
            backgroundColor: Colors.amber,
            snackPosition: SnackPosition.BOTTOM,
            icon: Icon(Icons.add));
      }),
    );
  }
}
