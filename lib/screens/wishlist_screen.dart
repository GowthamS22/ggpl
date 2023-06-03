import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ggpl/components/wishilst_item.dart';
import 'package:ggpl/controllers/wishlist_controller.dart';
import 'package:ggpl/widgets/widgets.dart';

import '../config/palette.dart';

class WishlistScreen extends StatefulWidget {
  const WishlistScreen({Key? key}) : super(key: key);

  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {

  final WishlistController wishlistController = Get.put(WishlistController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: CustomAppDrawer(),
      body: CustomScrollView(
        slivers: [
          _buildWishlistItems(),
        ],
      ),
    );
  }

  SliverToBoxAdapter _buildWishlistItems() {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Wishlist Items',style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 20,),
            ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: wishlistController.wishlist.length,
              itemBuilder: (context, index) {
                final wishlist = wishlistController.wishlist[index];
                return Column(
                  children: [
                    WishlistItem(wishlist: wishlist),
                    SizedBox(height: 15,),
                  ],
                );
              },
            )
          ],
        ),
      ),
    );
  }

}
class EmptySection extends StatelessWidget {
  const EmptySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('assets/images/icons/whishlist.png'),
            ),
            SizedBox(height: 20,),
            Text(
              'Save for Later Items',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20,),
            Text(
              'Swipe to save Products in your Basket to Purchase Later',
              style: TextStyle(fontSize: 18,color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10,),
            Text(
              'Unavailable items from checkout will automatically apear here',
              style: TextStyle(fontSize: 16,color: Colors.grey),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

