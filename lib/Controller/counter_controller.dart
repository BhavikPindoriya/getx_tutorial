import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt counter = 1.obs;

  incrmentCounter() {
    counter.value++;
    print(counter.value);
  }
}


// Rx ae batha data type ma agad lage te getx class thi ave tethi int value levi hoy to int agad RxInt lage 
// .obs se observ karse ke counter variable ma kai change avyo ke nahi te check  karse 