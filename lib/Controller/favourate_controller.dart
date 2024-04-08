import 'package:get/get.dart';

class FavouriteController extends GetxController {
  RxList<String> fruitList = ["Apple", "Mangos", "Banana", "Oranges"].obs;
  RxList tempFruitList = [].obs;

  addToFavourite(String value) {
    tempFruitList.add(value);
  }

  removeFromeFavourite(String value) {
    tempFruitList.remove(value);
  }
}
