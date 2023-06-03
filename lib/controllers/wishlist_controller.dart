import 'package:get/get.dart';
import 'package:ggpl/models/wishlist.dart';

class WishlistController extends GetxController {
  var wishlist = <Wishlist>[].obs;
  
  void onInit() {
    fetchWishlist();
    super.onInit();
  }
  
  void fetchWishlist() {
    List<Wishlist> fetchedWishlist = [
      Wishlist(id: 1, name: 'Apple', price: 20.0, imageUrl: 'assets/images/products/product-1.png'),
      Wishlist(id: 2, name: 'Apple', price: 20.0, imageUrl: 'assets/images/products/product-1.png'),
      Wishlist(id: 3, name: 'Apple', price: 20.0, imageUrl: 'assets/images/products/product-1.png'),
    ];
    
    wishlist.value = fetchedWishlist;
  }
  
}