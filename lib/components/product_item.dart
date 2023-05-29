import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ggpl/config/palette.dart';

import '../models/product.dart';

class ProductItem extends StatelessWidget {

  final Product product;

  const ProductItem({required this.product});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print(product.id);
        Get.toNamed('single-product',arguments: {'id': product.id,});
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Image(
                    image: AssetImage(product.imageUrl),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(product.name,style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    )),
                    SizedBox(height: 10,),
                    Text('\$${product.price.toStringAsFixed(2)}',style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    )),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 35,
                          decoration: BoxDecoration(
                            color: Palette.uomBg,
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          child: Row(
                            children: [
                              GestureDetector(
                                child: Container(
                                  padding: EdgeInsets.all(5),
                                  child: Icon(Icons.remove_circle,color: Palette.secondaryColor,size: 25,),
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
                                  child: Icon(Icons.add_circle,color: Palette.secondaryColor,size: 25,),
                                ),
                                onTap: () {

                                },
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: 5,),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            color: Palette.uomBg,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          height:35,
                          // width: 150,
                          child: DropdownButton(
                            items: <String>[
                              'KGS',
                              'PCS',
                            ].map<DropdownMenuItem<String>>((String value){
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (value) {

                            },
                            value: 'KGS',
                            dropdownColor: Palette.uomBg,
                            underline: Container( // Custom underline for the dropdown button
                              height: 0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Container(
                      width: 100,
                      child: ElevatedButton(
                        child: Text('ADD'),
                        onPressed: () {

                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Palette.primaryColor),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          )),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            top: 15,
            left: 0,
            child: Transform.rotate(
              angle: -0.0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                    color: Palette.primaryColor,
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),topRight: Radius.circular(10))
                ),
                child: Text(
                  '20% Off',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 10,
            right: 10,
            child: Transform.rotate(
              angle: -0.0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: Image(
                  image: AssetImage('assets/images/products/product-type.png'),
                  color: Colors.green,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
