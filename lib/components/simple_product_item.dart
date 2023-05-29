import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ggpl/models/product.dart';

import '../config/palette.dart';

class SimpleProductItem extends StatelessWidget {

  final Product product;
  const SimpleProductItem({required this.product});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed('single-product',arguments: {'id': product.id,});
      },
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(15),
            width: double.infinity,
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Image(
                    image: AssetImage(product.imageUrl),
                    width: double.infinity,
                    height: 120,
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  product.name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 10,),
                Text('Rs.20',style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Container(
                      height: 38,
                      decoration: BoxDecoration(
                        color: Palette.uomBg,
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: Row(
                        children: [
                          GestureDetector(
                            child: Container(
                              padding: EdgeInsets.all(5),
                              child: Text('-',style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Palette.secondaryColor
                              ),),
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
                              child: Text('+',style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Palette.secondaryColor
                              ),),
                            ),
                            onTap: () {

                            },
                          )
                        ],
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 1),
                      decoration: BoxDecoration(
                        color: Palette.uomBg,
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      height:40,
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
                Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {

                    },
                    child: Text('ADD',style: TextStyle(
                      fontSize: 16,
                    ),),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Palette.primaryColor)
                    ),
                  ),
                )
              ],
            ),
          ),

        ],
      ),
    );
  }
}
