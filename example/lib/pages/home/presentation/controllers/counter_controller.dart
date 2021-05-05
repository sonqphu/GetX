
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class CounterController extends GetxController {
  // ignore: type_annotate_public_apis
  var count = 0;
  // ignore: type_annotate_public_apis
  var getStorageValue = "";
  void increment() {
    count++;
    update();
  }


  void getShareValue()
  {
    var getStorage = GetStorage();
    getStorage.write('getStorageValueKey', 'Chuỗi lấy từ GetStorage');
    getStorageValue = "${getStorage.read('getStorageValueKey')} $count";
    update();
  }
}