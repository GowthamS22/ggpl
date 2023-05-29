import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../config/palette.dart';

class BannerItem extends StatelessWidget {
  const BannerItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width / 2.1,top: 20),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.orange,
          image: DecorationImage(
              image: AssetImage('assets/images/banner/banner1.png'),
              fit: BoxFit.contain,
              alignment: Alignment.bottomLeft
          ),
          borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('FLAT 50% OFFER',style: TextStyle(
            color: Palette.secondaryColor,
            fontSize: 20,
          ),),
          Text('Healthy Options?',style: TextStyle(
              color: Palette.linkColor,
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),),
          SizedBox(height: 10,),
          Text('Take Baby steps to start Eating Better.!',style: TextStyle(
            color: Palette.secondaryColor,
            fontSize: 15,
          ),),
          SizedBox(height: 10,),
          ElevatedButton(
            onPressed: () {
            },
            child: Text('SHOP NOW',style: TextStyle(
              fontSize: 15,
            ),),
            style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
                backgroundColor: MaterialStateProperty.all(Palette.secondaryColor)
            ),
          )
        ],
      ),
    );
  }
}
