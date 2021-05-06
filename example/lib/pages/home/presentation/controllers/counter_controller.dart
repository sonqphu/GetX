
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class CounterController extends GetxController {
  // ignore: type_annotate_public_apis
  var countIncre = 0;
  // ignore: type_annotate_public_apis
  var countDecre = 0;
  // ignore: type_annotate_public_apis
  var getStorageValue = "";
  void increment() {
    countIncre++;
    update();
  }


  void decrement() {
    countDecre--;
    update();
  }


  void getShareValue()
  {
    var getStorage = GetStorage();
    getStorage.write('getStorageValueKey', 'Chuỗi lấy từ GetStorage');
    getStorageValue = "${getStorage.read('getStorageValueKey')} $countIncre";
    update();
  }
}