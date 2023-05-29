import 'package:get/get.dart';

import '../models/category.dart';

class CategoryController extends GetxController {
  var categories = <Category>[].obs;

  @override
  void onInit() {
    fetchCategories();
    super.onInit();
  }

  void fetchCategories() {

    List<Category> fetechedCategories = [
      Category(id: '1', name: 'LEAVES', imageUrl: 'assets/images/products/product-1.png'),
      Category(id: '2', name: 'LEAVES', imageUrl: 'assets/images/products/product-1.png'),
      Category(id: '3', name: 'LEAVES', imageUrl: 'assets/images/products/product-1.png'),
      Category(id: '4', name: 'LEAVES', imageUrl: 'assets/images/products/product-1.png'),
      Category(id: '5', name: 'LEAVES', imageUrl: 'assets/images/products/product-1.png'),
      Category(id: '6', name: 'LEAVES', imageUrl: 'assets/images/products/product-1.png'),
    ];
    categories.value = fetechedCategories;
  }

}