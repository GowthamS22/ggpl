import 'package:flutter/material.dart';
import 'package:ggpl/config/palette.dart';
import 'package:ggpl/widgets/widgets.dart';

class OrderSuccessScreen extends StatefulWidget {
  const OrderSuccessScreen({Key? key}) : super(key: key);

  @override
  State<OrderSuccessScreen> createState() => _OrderSuccessScreenState();
}

class _OrderSuccessScreenState extends State<OrderSuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: CustomAppDrawer(),
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('assets/images/icons/order-success.png'),
              ),
              SizedBox(height: 20,),
              Text(
                'Your Order has Been Accepted',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 20,),
              Text(
                'Your Items has Placed and is on its way to being Processed.',
                style: TextStyle(fontSize: 18,color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20,),
              Container(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('TRACK ORDER',style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                      )
                    ),
                    backgroundColor: MaterialStateProperty.all(Palette.primaryColor)
                  ),
                ),
              ),
              Container(
                child: TextButton(
                  onPressed: () {

                  },
                  child: Text('Back to Home',style: TextStyle(
                    fontSize: 18,
                    color: Colors.black
                  ),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
