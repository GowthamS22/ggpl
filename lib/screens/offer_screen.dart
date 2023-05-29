import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ggpl/components/category_item.dart';
import 'package:ggpl/components/simple_product_item.dart';
import 'package:ggpl/controllers/category_controller.dart';
import 'package:ggpl/controllers/product_controller.dart';
import 'package:ggpl/widgets/widgets.dart';

import '../components/banner_item.dart';

class OfferScreen extends StatefulWidget {
  const OfferScreen({Key? key}) : super(key: key);

  @override
  State<OfferScreen> createState() => _OfferScreenState();
}

class _OfferScreenState extends State<OfferScreen> {

  final CategoryController categoryController = Get.put(CategoryController());
  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: CustomAppDrawer(),
      body: CustomScrollView(
        slivers: [
          _buildBannerSec(),
          _buildCategorySec(),
          _buildTopOfferSec(),
        ],
      ),
    );
  }

  SliverToBoxAdapter _buildBannerSec() {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: BannerItem(),
      ),
    );
  }

  SliverToBoxAdapter _buildCategorySec() {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Shop By Category',style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
            ),),
            SizedBox(
              height: 20,
            ),
            Container(
              child: GridView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.8
                ),
                itemCount: categoryController.categories.length,
                itemBuilder: (context, index) {
                  final category = categoryController.categories[index];
                  return CategoryItem(category: category);
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildTopOfferSec() {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Top Offers',style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),),
                IconButton(
                  onPressed: () {
                    print('Offer');
                  },
                  icon: Icon(Icons.arrow_forward_outlined,size: 30,),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: GridView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.54
                ),
                itemCount: productController.offerproducts.length,
                itemBuilder: (context, index) {
                  final product = productController.offerproducts[index];
                  return SimpleProductItem(product: product);
                },
              ),
            )
          ],
        ),
      ),
    );
  }

}
