import 'package:flutter/material.dart';
import 'package:ggpl/widgets/widgets.dart';

import '../config/palette.dart';

class CouponScreen extends StatefulWidget {
  const CouponScreen({Key? key}) : super(key: key);

  @override
  State<CouponScreen> createState() => _CouponScreenState();
}

class _CouponScreenState extends State<CouponScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: CustomAppBar(),
      body: CustomScrollView(
        slivers: [
          _buildCouponApplyForm(),
          _buildCouponSec(),
        ],
      ),
    );
  }

  SliverToBoxAdapter _buildCouponApplyForm() {
    return SliverToBoxAdapter(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Palette.primaryColor,
              Colors.white, // Set the same color for the second half
            ],
            stops: [0.5, 0.2], // Adjust the stops to control the color distribution
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Form(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 1.8,
                child: TextFormField(
                  decoration:InputDecoration(
                    hintText: 'Enter Coupon Code',
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(
                              color: Palette.adbackgroundColor,
                              width: 2
                          )
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(
                              color: Palette.adbackgroundColor,
                              width: 2
                          )
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 5)
                  ),
                ),
              ),
              Container(
                height: 45,
                child: ElevatedButton(
                  onPressed: () {

                  },
                  child: Text('APPLY',style: TextStyle(
                      fontSize: 16
                  ),),
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                      backgroundColor: MaterialStateProperty.all(Colors.orange)
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildCouponSec() {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15,),
            Text('Available Coupons',style: TextStyle(
                fontSize: 18
            ),),
            SizedBox(height: 15,),
            Container(
              height: MediaQuery.of(context).size.height,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 2,
                ),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 70,
                          height: 60,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Palette.adbackgroundColor,
                              width: 2
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          padding: EdgeInsets.all(10),
                          child: Icon(Icons.local_offer),
                        ),
                        SizedBox(height: 10,),
                        Text('Find Rs. 35 Off on Purchase of Cadcury Silk products worth Rs. 360 or More.'),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 35,
                              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 8),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1,
                                  color: Colors.grey,
                                  style: BorderStyle.solid
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Text('ZAWQ123'),
                            ),
                            Container(
                              height: 35,
                              width: 100,
                              child: ElevatedButton(
                                onPressed: () {

                                },
                                child: Text('Apply',style: TextStyle(
                                  fontSize: 18
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
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  /*SliverToBoxAdapter _buildCouponSec() {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        decoration: BoxDecoration(
            color: Colors.white
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Available Coupons',style: TextStyle(
              fontSize: 18
            ),),
            GridView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1
              ),
              itemBuilder: (context, index) {
                return Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Find Rs. 35 Off on Purchase of Cadcury Silk products worth Rs. 360 or More.'),
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }*/
}
