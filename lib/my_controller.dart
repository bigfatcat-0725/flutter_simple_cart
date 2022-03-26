import 'package:get/get.dart';

class MyController extends GetxController {
  var apple = 0.obs;
  var banana = 0.obs;
  get sum => apple.value + banana.value;
  get price => (apple.value * 5) + (banana.value * 3);

  incrementApple() {
    apple.value++;
  }

  decrementApple() {
    if (apple.value <= 0) {
      Get.snackbar('Buying Apples', 'Can not be less than zero');
    } else {
      apple.value--;
    }
  }

  incrementBanana() {
    banana.value++;
  }

  decrementBanana() {
    if (banana.value <= 0) {
      Get.snackbar('Buying Bananas', 'Can not be less than zero');
    } else {
      banana.value--;
    }
  }
}
