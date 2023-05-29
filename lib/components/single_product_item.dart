import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
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
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Transform.rotate(
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
              TextButton(
                onPressed: () {

                },
                child: Icon(Icons.favorite,color: Colors.grey,),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(CircleBorder()),
                  backgroundColor: MaterialStateProperty.all(Palette.uomBg),
                ),
              )
            ],
          ),
          SizedBox(height: 5,),
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
                        child: Icon(Icons.remove_circle,color: Palette.primaryColor,size: 25,),
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
                        child: Icon(Icons.add_circle,color: Palette.primaryColor,size: 25,),
                      ),
                      onTap: () {

                      },
                    )
                  ],
                ),
              ),

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
                width: MediaQuery.of(context).size.width / 2.5,
                child: ElevatedButton(
                  onPressed: () {

                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.shopping_basket_outlined),
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
          ),
          SizedBox(height: 20,),
          Text('About This Products',style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold
          ),),
          SizedBox(height: 10,),
          ExpansionPanelList(
            elevation: 1,
            expandedHeaderPadding: EdgeInsets.all(5),
            children: [
              ExpansionPanel(
                headerBuilder: (context, isExpanded) {
                  return ListTile(
                    title: Text('About the Product'),
                  );
                },
                body: ListTile(
                  title: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. ... be distracted by the readable content of a page when looking at its layout.'),
                ),
                isExpanded: false,
              ),
            ],
          ),
          SizedBox(height: 15,),
          Text('Ratings & Reviews',style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold
          ),),
          SizedBox(height: 20,),
          Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Rating'),
                SizedBox(height: 10,),
                RatingBar.builder(
                  initialRating: 2,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 35.0,
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {

                  },
                ),
                SizedBox(height: 15,),
                Container(
                  width: double.infinity,
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: false,
                      contentPadding: EdgeInsets.symmetric(vertical: 17.0, horizontal: 17.0),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Palette.formBorder,
                          width: 2.0,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Palette.formBorder,
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {

                    },
                    child: Text('Submit the Rating',style: TextStyle(
                      fontSize: 17
                    ),),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Palette.primaryColor),

                    ),
                  ),
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}
