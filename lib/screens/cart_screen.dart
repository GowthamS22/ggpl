import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ggpl/components/cart_item.dart';
import 'package:ggpl/controllers/cart_controller.dart';
import 'package:ggpl/widgets/widgets.dart';

import '../config/palette.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {

  final CartController cartController = Get.put(CartController());

  List paymentDetails = [
    {'title':'Items Total','price':'76'},
    {'title':'Packing / Handling Charge','price':'76'},
    {'title':'Partner Delivery Fee','price':'76'},
    {'title':'To Pay','price':'76'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: CustomAppDrawer(),
      body: CustomScrollView(
        slivers: [
          _buildCartItems(),
          _buildCouponSec(),
          _buildPaymentDetailSec(),
          _buildDeliveryLocationSec(),
        ],
      ),
    );
  }

  SliverToBoxAdapter _buildCartItems() {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GridView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1, // Number of columns
                mainAxisSpacing: 10, // Spacing between each row
                crossAxisSpacing: 10, // Spacing between each column
                childAspectRatio: 3.5, // Adjust the aspect ratio as needed
              ),
              itemCount: cartController.caritems.length,
              itemBuilder: (context, index) {
                final cartitem = cartController.caritems[index];
                return CartItem(cart: cartitem);
              },
            )
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildCouponSec() {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        decoration: BoxDecoration(
            color: Palette.adbackgroundColor
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image(
              image: AssetImage('assets/images/icons/offer-icon.png'),
              width: 60,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Add Coupon Code',style: TextStyle(
                    color: Palette.secondaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                ),),
                Text('Avail offers and Discounts on your Order',style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold
                ),),
              ],
            ),
            IconButton(
              onPressed: () {
                Get.toNamed('coupons');
              },
              icon: Icon(Icons.arrow_forward_ios,size: 30,),
            ),
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildPaymentDetailSec() {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
            Text('Canellation Policy',style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 10,),
            Text('Orders cannot be cancelled once packed for delivery. In case of unexpected deleys, a refund will be provided, if applicable.',style: TextStyle(
              color: Colors.grey
            ),),
            SizedBox(height: 20,),
            Text('Payment Details',style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 10,),

            ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: paymentDetails.length,
              itemBuilder: (context, index) {
                final paymentDetail = paymentDetails[index];
                return Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.grey,
                        width: 1.0, // Adjust the width as needed
                      ),
                    ),
                  ),
                  child: ListTile(
                    title: Text('${paymentDetail['title']}'),
                    trailing: Text('\$${paymentDetail['price']}',style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),),
                  ),
                );
              },
            ),

          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildDeliveryLocationSec() {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        decoration: BoxDecoration(
            color: Palette.adbackgroundColor
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {

                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.location_on_outlined,size: 30,color: Palette.primaryColor,),
                      Text('21, Rajainager, Bangalore',style: TextStyle(fontSize: 17,color: Colors.black),)
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Get.toNamed('address');
                  },
                  child: Text('CHANGE',style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.red
                  ),),
                )
              ],
            ),
            SizedBox(height: 10,),
            Container(
              width: double.infinity,
              height: 40,
              child: ElevatedButton(
                onPressed: () {

                },
                child: Text('PLACE ORDER',style: TextStyle(
                  fontSize: 18,
                ),),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Palette.primaryColor),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ))
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

}
