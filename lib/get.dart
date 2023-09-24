import 'package:get/get.dart';

class myController extends GetxController {
  var soms = 0.obs;
  var counter = 0.obs;

  void increse() {
    if (counter != 5) {
      counter++;
    }
    ;
  }

  void decreese() {
    if (counter != 0) counter--;
  }

  void innnt() {
    soms++;
  }

  void deee() {
    soms--;
  }
}
