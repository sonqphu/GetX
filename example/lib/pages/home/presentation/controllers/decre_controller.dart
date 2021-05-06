import 'package:get/get.dart';
class DecreController extends GetxController {
  // ignore: type_annotate_public_apis
  var count = 0;
  void decrement() {
    count--;
    update();
  }
}