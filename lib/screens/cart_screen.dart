import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ggpl/components/cart_item.dart';
import 'package:ggpl/controllers/cart_controller.dart';
import 'package:ggpl/widgets/widgets.dart';

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
          _buildPaymentDetailSec(),
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

  SliverToBoxAdapter _buildPaymentDetailSec() {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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

}
