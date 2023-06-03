import 'package:flutter/material.dart';
import 'package:ggpl/config/palette.dart';
import 'package:ggpl/widgets/widgets.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {

  bool orderSupport = false;
  bool offer = false;
  bool promotions = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: CustomAppDrawer(),
      body: CustomScrollView(
        slivers: [
          _buildNotificationSection(),
        ],
      ),
    );
  }

  SliverToBoxAdapter _buildNotificationSection() {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Order and Support',style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 1.6,
                  child: Text('Receive notifications related to your order status, payments and support communications',style: TextStyle(
                    fontSize: 17,
                    color: Colors.grey
                  ),),
                ),
                Switch(
                  value: orderSupport,
                  onChanged: (bool newValue) {
                    setState(() {
                      orderSupport = newValue;
                    });
                  },
                  activeColor: Palette.primaryColor,
                ),
              ],
            ),
            SizedBox(height: 30,),
            Text('Offers',style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 1.6,
                  child: Text('Receive notifications related to your order status, payments and support communications',style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey
                  ),),
                ),
                Switch(
                  value: offer,
                  onChanged: (bool newValue) {
                    setState(() {
                      offer = newValue;
                    });
                  },
                  activeColor: Palette.primaryColor,
                ),
              ],
            ),
            SizedBox(height: 30,),
            Text('Promotions and New Launches',style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 1.6,
                  child: Text('Receive Update on new brands, stores or features that you can try on sqare foodie vides. You might occassionally be asked to give feedback on new products / services.',style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey
                  ),),
                ),
                Switch(
                  value: promotions,
                  onChanged: (bool newValue) {
                    setState(() {
                      promotions = newValue;
                    });
                  },
                  activeColor: Palette.primaryColor,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

}
