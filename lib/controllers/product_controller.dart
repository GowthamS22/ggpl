import 'package:get/get.dart';
import 'package:ggpl/models/product.dart';

class ProductController extends GetxController {
  var products = <Product>[].obs;
  var offerproducts = <Product>[].obs;

  @override
  void onInit() {
    fetchProducts();
    fetchOfferProducts();
    super.onInit();
  }

  void fetchProducts() {
    List<Product> fetchedProducts = [
      Product(id: '1', name: 'Apple', price: 100.00, imageUrl: 'assets/images/products/product-1.png'),
      Product(id: '2', name: 'Apple', price: 100.00, imageUrl: 'assets/images/products/product-1.png'),
      Product(id: '3', name: 'Apple', price: 100.00, imageUrl: 'assets/images/products/product-1.png'),
      Product(id: '4', name: 'Apple', price: 100.00, imageUrl: 'assets/images/products/product-1.png'),
      Product(id: '4', name: 'Apple', price: 100.00, imageUrl: 'assets/images/products/product-1.png'),
      Product(id: '4', name: 'Apple', price: 100.00, imageUrl: 'assets/images/products/product-1.png'),
      Product(id: '4', name: 'Apple', price: 100.00, imageUrl: 'assets/images/products/product-1.png'),
      Product(id: '4', name: 'Apple', price: 100.00, imageUrl: 'assets/images/products/product-1.png'),
      Product(id: '4', name: 'Apple', price: 100.00, imageUrl: 'assets/images/products/product-1.png'),
      Product(id: '4', name: 'Apple', price: 100.00, imageUrl: 'assets/images/products/product-1.png'),
      Product(id: '4', name: 'Apple', price: 100.00, imageUrl: 'assets/images/products/product-1.png'),
      Product(id: '4', name: 'Apple', price: 100.00, imageUrl: 'assets/images/products/product-1.png'),
      Product(id: '4', name: 'Apple', price: 100.00, imageUrl: 'assets/images/products/product-1.png'),
      Product(id: '4', name: 'Apple', price: 100.00, imageUrl: 'assets/images/products/product-1.png'),
      Product(id: '4', name: 'Apple', price: 100.00, imageUrl: 'assets/images/products/product-1.png'),
    ];

    products.value = fetchedProducts;
  }

  void fetchOfferProducts() {
    List<Product> fetchedOfferProducts = [
      Product(id: '1', name: 'Orange', price: 100.00, imageUrl: 'assets/images/products/product-1.png'),
      Product(id: '2', name: 'Orange', price: 100.00, imageUrl: 'assets/images/products/product-1.png'),
    ];
    offerproducts.value = fetchedOfferProducts;
  }

}