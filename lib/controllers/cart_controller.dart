import 'package:get/get.dart';
import 'package:ggpl/models/cart.dart';

class CartController extends GetxController {
  var caritems = <Cart>[].obs;

  @override
  void onInit() {
    fetchCartItems();
    super.onInit();
  }

  void fetchCartItems() {
    List<Cart> fetchedCartItems = [
      Cart(id: '1', name: 'Apple - KG', price: 20.00, imageUrl: 'assets/images/products/product-1.png'),
      Cart(id: '2', name: 'Onion - KG', price: 20.00, imageUrl: 'assets/images/products/product-1.png'),
    ];
    caritems.value = fetchedCartItems;
  }
}