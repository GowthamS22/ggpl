import 'package:flutter/material.dart';
import 'package:ggpl/models/product.dart';

import '../config/palette.dart';

class SimpleProductItem extends StatelessWidget {

  final Product product;
  const SimpleProductItem({required this.product});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {

      },
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                ),
                BoxShadow(
                  color: Palette.gridBg,
                  spreadRadius: -1.0,
                  blurRadius: 3.0,
                  offset: Offset(-2, -2,)
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
                    width: 130,
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
                    ElevatedButton(
                      onPressed: () {

                      },
                      child: Text('ADD',style: TextStyle(
                        fontSize: 16,
                      ),),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Palette.primaryColor)
                      ),
                    )
                  ],
                )

              ],
            ),
          ),

        ],
      ),
    );
  }
}
