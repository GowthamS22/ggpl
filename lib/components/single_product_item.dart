import 'package:flutter/material.dart';
import 'package:ggpl/config/palette.dart';

class SingleProductItem extends StatelessWidget {
  const SingleProductItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 200,
            child: TextButton(
              onPressed: () {

              },
              child: Text('Visit the Organic Store',style: TextStyle(
                  fontSize: 16,
                  color: Palette.secondaryColor
              ),),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Palette.adbackgroundColor),
                  side: MaterialStateProperty.all(BorderSide(
                      width: 1,
                      color: Palette.primaryColor
                  ))
              ),
            ),
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Onion - Medium / Vengayam',style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),),
              Image(
                image: AssetImage('assets/images/products/product-type.png'),
                color: Colors.green,
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),

          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: '\$3.99  ',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  )
                ),
                TextSpan(
                  text: '\$8.22',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                    decoration: TextDecoration.lineThrough,
                    fontWeight: FontWeight.bold
                  )
                ),
              ]
            )
          ),
          SizedBox(height: 10,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 1.5,
                decoration: BoxDecoration(
                  color: Colors.brown,
                  borderRadius: BorderRadius.all(Radius.circular(15))
                ),
                child: Image(
                  image: AssetImage('assets/images/products/product-image-1.png'),
                ),
              ),
              SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: (MediaQuery.of(context).size.width / 1.5) / 3.3,
                    decoration: BoxDecoration(
                        color: Colors.brown,
                        borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    child: Image(
                      image: AssetImage('assets/images/products/product-image-1.png'),
                    ),
                  ),
                  SizedBox(height:10,),
                  Container(
                    width: (MediaQuery.of(context).size.width / 1.5) / 3.3,
                    decoration: BoxDecoration(
                        color: Colors.brown,
                        borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    child: Image(
                      image: AssetImage('assets/images/products/product-image-1.png'),
                    ),
                  ),
                  SizedBox(height:10,),
                  Container(
                    width: (MediaQuery.of(context).size.width / 1.5) / 3.3,
                    decoration: BoxDecoration(
                        color: Colors.brown,
                        borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    child: Image(
                      image: AssetImage('assets/images/products/product-image-1.png'),
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 5,
                padding: EdgeInsets.symmetric(horizontal: 5),
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
              Container(
                width: MediaQuery.of(context).size.width / 2.4,
                child: ElevatedButton(
                  onPressed: () {

                  },
                  child: Row(
                    children: [
                      Icon(Icons.shopping_basket_outlined),
                      SizedBox(width: 10,),
                      Text('Add to Basket',style: TextStyle(
                        fontSize: 16,
                      ),)
                    ],
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Palette.primaryColor)
                  ),
                ),
              ),
              
            ],
          )
        ],
      ),
    );
  }
}
