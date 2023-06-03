import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ggpl/config/palette.dart';
import 'package:ggpl/controllers/product_controller.dart';
import 'package:ggpl/components/product_item.dart';
import 'package:ggpl/widgets/widgets.dart';

class CategoryProducts extends StatefulWidget {
  const CategoryProducts({Key? key}) : super(key: key);

  @override
  State<CategoryProducts> createState() => _CategoryProductsState();
}

final List<String> items = [
  'Exotic Vegetables',
  'Citrus Fruits',
  'Item 3',
  'Item 4',
  'Item 5',
  'Item 6',
  'Item 7',
  'Item 8',
  'Item 9',
  'Item 10',
];

class _CategoryProductsState extends State<CategoryProducts> {

  final ProductController productController = Get.put(ProductController());
  bool showProducts = true;

  List<String> sortingOptions = ['Popularity', 'Price - Low to Higth', 'Price - High to Low', 'Alphabetical', 'Off - High to Low'];
  String selectedSortingOption = 'Popularity';

  String selectedFilter = 'sort_by';

  // final ScrollController _scrollController = ScrollController();
  //
  // void scrollToItem(int index) {
  //   // _scrollController.jumpTo(
  //   //   _scrollController.position.maxScrollExtent *
  //   //       (index / 100), // Assumes 100 items in the GridView.builder
  //   // );
  //
  //   // Alternatively, you can use animateTo to smoothly scroll to the item
  //   _scrollController.animateTo(
  //     _scrollController.position.maxScrollExtent * (index / 15),
  //     duration: Duration(milliseconds: 500),
  //     curve: Curves.ease,
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: CustomAppDrawer(),
      body: showProducts == true ? CustomScrollView(
        slivers: [
          _buildCategoriesList(),
          _buildCategoryProductFilter(),
          _buildCategoryProductList()
        ],
      ) : CustomScrollView(
        slivers: [
          _buildFilter(),
          _buildFilterElements(),
        ],
      ),
    );
  }

  SliverToBoxAdapter _buildCategoriesList() {
    return SliverToBoxAdapter(
      child: Container(
        height: 70,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(10),
              child: TextButton(
                onPressed: () {
                  //scrollToItem(6);
                  print('test');
                },
                child: Text(items[index],style: TextStyle(
                  color: Colors.black,
                )),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Palette.adbackgroundColor),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ))
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildCategoryProductFilter() {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('${productController.products.length} ITEMS',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18
            ),),
            TextButton(
              onPressed: () {
                setState(() {
                  showProducts = !showProducts;
                });
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Palette.secondaryColor),
                shape: MaterialStateProperty.all(
                  CircleBorder(
                  )
                )
              ),
              child: Icon(Icons.tune_outlined,color: Colors.white,),
            )
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildCategoryProductList() {
    return SliverToBoxAdapter(
      child: Container(
        height: 800,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: GridView.builder(
                //controller: _scrollController,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1, // Number of columns
                  mainAxisSpacing: 15, // Spacing between each row
                  crossAxisSpacing: 10, // Spacing between each column
                  childAspectRatio: 2, // Adjust the aspect ratio as needed
                ),
                itemCount: productController.products.length,
                itemBuilder: (context, index) {
                  final product = productController.products[index];
                  return ProductItem(product: product);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildFilter() {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 2.3,
                  height: 50,
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                         selectedFilter = 'refine_by';
                      });
                    },
                    child: Text('Refine By',style: TextStyle(
                        color: Colors.black,
                        fontSize: 18
                    )),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Palette.adbackgroundColor),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      )),
                      side: MaterialStateProperty.all(
                        selectedFilter == 'refine_by' ?
                        BorderSide(
                            color: Palette.primaryColor,
                            width: 2
                        ) :
                        BorderSide.none
                      )
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 2.3,
                  height: 50,
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        selectedFilter = 'sort_by';
                      });
                    },
                    child: Text('Sort by',style: TextStyle(
                        color: Colors.black,
                        fontSize: 18
                    )),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Palette.adbackgroundColor),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      )),
                      side: MaterialStateProperty.all(
                        selectedFilter == 'sort_by' ?
                        BorderSide(
                            color: Palette.primaryColor,
                            width: 2
                        ) :
                        BorderSide.none
                      )
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildFilterElements() {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          children: [
            selectedFilter == 'sort_by' ?
            Container(
              width: double.infinity,
              child: Column(
                children: sortingOptions.map((option) {

                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(option,style: TextStyle(
                          fontSize: 17,
                          color: option == selectedSortingOption ? Palette.primaryColor : Colors.black
                      ),),
                      Transform.scale(
                        child: Radio(
                          activeColor: Palette.primaryColor,
                          visualDensity: VisualDensity.standard,
                          value: option,
                          groupValue: selectedSortingOption,
                          onChanged: (value) {
                            setState(() {
                              selectedSortingOption = value as String;
                              // Perform sorting based on the selected option
                              showProducts = true;
                              //sortProducts(value as String);
                            });
                          },
                        ),
                        scale: 1.5,
                      ),
                    ],
                  );

                }).toList(),
              ),
            ) :
            Column(
              children: [
                Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ExpansionPanelList(
                        elevation: 1,
                        expandedHeaderPadding: EdgeInsets.all(5),
                        children: [
                          ExpansionPanel(
                            headerBuilder: (context, isExpanded) {
                              return ListTile(
                                title: Text('Brand'),
                              );
                            },
                            body: ListTile(
                              title: Text('Dsfsfs'),
                            ),
                            isExpanded: false,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 2.6,
                      height: 40,
                      child: TextButton(
                        onPressed: () {

                        },
                        child: Text('CLEAR ALL',style: TextStyle(
                            color: Colors.black,
                            fontSize: 18
                        )),
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Palette.adbackgroundColor),
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            )),
                            side: MaterialStateProperty.all(
                                BorderSide(
                                    color: Colors.black,
                                    width: 1
                                )
                            )
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 2.6,
                      height: 40,
                      child: TextButton(
                        onPressed: () {

                        },
                        child: Text('APPLY',style: TextStyle(
                            color: Colors.white,
                            fontSize: 18
                        )),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Palette.primaryColor),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          )),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

}
