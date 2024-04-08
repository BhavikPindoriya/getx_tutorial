import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/Controller/favourate_controller.dart';

class ExampleEleven extends StatefulWidget {
  const ExampleEleven({super.key});

  @override
  State<ExampleEleven> createState() => _ExampleElevenState();
}

class _ExampleElevenState extends State<ExampleEleven> {
  FavouriteController Controller = Get.put(FavouriteController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx Part 11'),
      ),
      body: ListView.builder(
        itemCount: Controller.fruitList.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
                onTap: () {
                  if (Controller.tempFruitList
                      .contains(Controller.fruitList[index].toString())) {
                    Controller.removeFromeFavourite(
                        Controller.fruitList[index].toString());
                  } else {
                    Controller.addToFavourite(
                        Controller.fruitList[index].toString());
                  }
                },
                title: Text(Controller.fruitList[index]),
                trailing: Obx(
                  () => Icon(
                    Icons.favorite,
                    color: Controller.tempFruitList
                            .contains(Controller.fruitList[index].toString())
                        ? Colors.red
                        : Colors.white,
                  ),
                )),
          );
        },
      ),
    );
  }
}
