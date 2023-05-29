import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ggpl/models/cart.dart';

import '../config/palette.dart';

class CartItem extends StatelessWidget {

  final Cart cart;
  const CartItem({required this.cart});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print(cart.id);
      },
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  color: Palette.productBg,
                ),
                BoxShadow(
                    color: Palette.gridBg,
                    spreadRadius: -5,
                    blurRadius: 5.0,
                    offset: Offset(-5, -3,)
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Image(
                    image: AssetImage(cart.imageUrl),
                    height: 100,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  children: [
                    Text(cart.name,style: TextStyle(
                      fontSize: 16
                    ),),
                    SizedBox(height: 10,),
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: Palette.adbackgroundColor,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        border: Border.all(
                          width: 1,
                          color: Palette.primaryColor
                        )
                      ),
                      child: Row(
                        children: [
                          GestureDetector(
                            child: Container(
                              padding: EdgeInsets.all(5),
                              child: Icon(Icons.remove,color: Palette.secondaryColor,size: 20,),
                            ),
                            onTap: () {
                              print('decrase');
                            },
                          ),
                          Container(
                            width: 30,
                            child: TextField(
                              maxLength: 3,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                hintText: '0',
                                border: InputBorder.none,
                                counterText: "",
                              ),
                              keyboardType: TextInputType.number,
                            ),
                          ),
                          InkWell(
                            child: Container(
                              padding: EdgeInsets.all(5),
                              child: Icon(Icons.add,color: Palette.secondaryColor,size: 20,),
                            ),
                            onTap: () {

                            },
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 10,),
                Text('\$34',style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Palette.secondaryColor
                ),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
