import 'package:get/get.dart';

class Slidercontroller extends GetxController {
  RxDouble opasity = .4.obs;

  setOpacity(double value) {
    opasity.value = value;
  }
}
