import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ggpl/components/category_item.dart';
import 'package:ggpl/components/simple_product_item.dart';
import 'package:ggpl/config/palette.dart';
import 'package:ggpl/controllers/category_controller.dart';
import 'package:ggpl/controllers/product_controller.dart';
import 'package:ggpl/widgets/custom_app_bar.dart';
import 'package:ggpl/widgets/custom_app_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final Map<String, String> bannerData = {
    'title': 'LOOKING FOR'
  };

  final CategoryController categoryController = Get.put(CategoryController());
  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: CustomAppDrawer(),
      body: CustomScrollView(
        slivers: [
          _buildLocationSec(),
          _buildSearchSec(),
          _buildBannerSec(),
          _buildCouponSec(),
          _buildCategoriesSec(),
          _buildAdSec(),
          _buildProductSec(),
        ],
      ),
    );
  }

  SliverToBoxAdapter _buildLocationSec() {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Palette.primaryColor
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {

              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.location_on_outlined,size: 30,color: Colors.white,),
                  Text('21, Rajainager, Bangalore',style: TextStyle(fontSize: 17,color: Colors.white),)
                ],
              ),
            ),
            Text('INSTANT \n 35 Mins',style: TextStyle(fontSize: 16,color: Colors.white),)
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildSearchSec() {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
        decoration: BoxDecoration(
            color: Palette.primaryColor
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.6,
              child: TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: Icon(Icons.search_rounded),
                  hintText: 'Search your groceries',
                  contentPadding: EdgeInsets.symmetric(vertical: 17.0, horizontal: 17.0),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Palette.formBorder,
                      width: 2.0,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Palette.formBorder,
                      width: 2.0,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 50,
              child: TextButton(
                onPressed: () {

                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  )),
                ),
                child: Icon(Icons.tune_outlined,color: Palette.secondaryColor,),
              ),
            )
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildBannerSec() {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Palette.primaryColor,
              Colors.white, // Set the same color for the second half
            ],
            stops: [0.2, 0.2], // Adjust the stops to control the color distribution
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width / 2.1,top: 20),
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.orange,
                image: DecorationImage(
                  image: AssetImage('assets/images/banner/banner1.png'),
                  fit: BoxFit.contain,
                  alignment: Alignment.bottomLeft
                ),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15),bottomRight: Radius.circular(15))
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('${bannerData['title']}',style: TextStyle(
                    color: Palette.secondaryColor,
                    fontSize: 20,
                  ),),
                  Text('Healthy Options?',style: TextStyle(
                      color: Palette.linkColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),),
                  SizedBox(height: 10,),
                  Text('Take Baby steps to start Eating Better.!',style: TextStyle(
                    color: Palette.secondaryColor,
                    fontSize: 15,
                  ),),
                  SizedBox(height: 10,),
                  ElevatedButton(
                    onPressed: () {
                    },
                    child: Text('SHOP NOW',style: TextStyle(
                      fontSize: 15,
                    ),),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
                      backgroundColor: MaterialStateProperty.all(Palette.secondaryColor)
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 15,),
            Container(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {

                },
                child: Text('FREE DELIVERY ON YOUR GROCERIES ORDER',style: TextStyle(fontWeight: FontWeight.bold),),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Palette.secondaryColor),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))))
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildCouponSec() {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Coupons for you',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Palette.secondaryColor,fontFamily: 'Inter'),),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/bg/coupon-bg.png'),
                      fit: BoxFit.contain,
                      alignment: Alignment.bottomLeft
                  ),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15),bottomRight: Radius.circular(15))
              ),
              height: 84,
              child: Column(
                children: [
                  Expanded(
                    child: PageView(
                      //controller: _pageController,
                      children: [
                        // Add your container widgets here
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 2,vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image(
                                    image: AssetImage('assets/images/icons/offer-icon.png'),
                                    width: 60,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('FLAT 10% OFF*',style: TextStyle(
                                        color: Palette.secondaryColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20
                                      ),),
                                      Text('ON MINIMUM ORDER OF 150',style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold
                                      ),),
                                      SizedBox(height: 5,),
                                      Text('USE CODE : PLUSCARE',style: TextStyle(
                                          fontSize: 12,
                                      ),)
                                    ],
                                  ),
                                  SizedBox(width: 10,),
                                  Container(
                                    width: 2,
                                    height: 50,
                                    color: Colors.black,
                                  ),
                                  SizedBox(width: 10,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('+ PLUS',style: TextStyle(
                                        color: Palette.primaryColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20
                                      ),),
                                      Text('Your Reriod of Comfort',style: TextStyle(
                                        fontSize: 10
                                      ),),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(

                        ),
                        Container(

                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
            Center(
              child: DotsIndicator(
                dotsCount: 3, // Number of containers
                position: 1,
                decorator: DotsDecorator(
                  activeColor: Palette.primaryColor,
                  size: const Size.square(9.0),
                  activeSize: const Size(10.0, 10.0),
                  activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildCategoriesSec() {
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
              height: 300,
              child: GridView.builder(
                itemCount: categoryController.categories.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // Number of columns
                  mainAxisSpacing: 10, // Spacing between each row
                  crossAxisSpacing: 10, // Spacing between each column
                  childAspectRatio: 0.8, // Adjust the aspect ratio as needed
                ),
                itemBuilder: (context, index) {
                  final category = categoryController.categories[index];
                  return CategoryItem(category: category);
                },
              ),
            )
          ],
        )
      ),
    );
  }

  SliverToBoxAdapter _buildAdSec() {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Palette.adbackgroundColor,
                  borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    padding: EdgeInsets.all(5),
                    child: Image.asset('assets/images/banner/ad.png'),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('POWER UP WITH',style: TextStyle(
                        color: Palette.secondaryColor,
                        fontSize: 18,
                      ),),
                      Text('Vegetables & Fruits',style: TextStyle(
                        color: Palette.linkColor,
                        fontSize: 18,
                      ),),
                      Text('UPTO 50% OFF*',style: TextStyle(
                        color: Palette.secondaryColor,
                        fontSize: 20,
                      ),),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildProductSec() {
    return SliverToBoxAdapter(
      child: Container(
        height: 650,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Text('Vegetables & Fruits',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Palette.secondaryColor
            ),),
            SizedBox(height: 20,),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Number of columns
                  mainAxisSpacing: 10, // Spacing between each row
                  crossAxisSpacing: 10, // Spacing between each column
                  childAspectRatio: 0.54, // Adjust the aspect ratio as needed
                ),
                itemCount: productController.products.length,
                itemBuilder: (context, index) {
                  final product = productController.products[index];
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
