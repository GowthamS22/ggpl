import 'package:get/get.dart';
import 'package:ggpl/models/help.dart';

class HelpController extends GetxController {
  var help = <Help>[].obs;

  void onInit() {
    fetchHelp();
    super.onInit();
  }

  void fetchHelp() {
    List<Help> fetchedHelp = [
      Help(title: 'How to Check status of My Order', description: 'Receive notification relat to order status, payment and support Aut haec tibi, Torquate, sunt vituperanda aut patrocinium voluptatis repudian dum. Quod si ita se habeat, non possit beatam praestare vitam sapientia.', status: false),
      Help(title: 'Change Items in My Order', description: '', status: false),
      Help(title: 'Cancel My Order', description: '', status: false),
      Help(title: 'Help with a Pick-up Order', description: '', status: false),
      Help(title: 'My Delivery Person made me Unsafe', description: '', status: false),
      Help(title: 'Refunding Payment', description: '', status: false),
      Help(title: 'Change My delivery Address', description: '', status: false),
    ];
    help.value = fetchedHelp;
  }

}