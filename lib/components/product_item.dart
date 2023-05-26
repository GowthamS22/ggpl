import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ggpl/config/palette.dart';

import '../../models/product.dart';

class ProductItem extends StatelessWidget {

  final Product product;

  const ProductItem({required this.product});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          decoration: BoxDecoration(
            color: Palette.adbackgroundColor,
            borderRadius: BorderRadius.all(Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0, 1), // Controls the position of the shadow
                blurRadius: 1, // Controls the spread of the shadow
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
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 1),
                    decoration: BoxDecoration(
                      color: Palette.uomBg,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    height:30,
                    width: 150,
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

      ],
    );
  }
}
