import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ggpl/screens/screens.dart';
import 'package:ggpl/widgets/custom_app_bar.dart';
import 'package:ggpl/widgets/custom_app_drawer.dart';

import '../../config/palette.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class MenuItem {
  final String title;
  final IconData icon;
  final String destination;

  MenuItem({required this.title, required this.icon, required this.destination});
}

List<MenuItem> menuItems = [
  MenuItem(title: 'My Orders', icon: Icons.home, destination: 'my-orders'),
  MenuItem(title: 'My Ratings & Reviews', icon: Icons.person, destination: 'notifications'),
  MenuItem(title: 'Notifications', icon: Icons.notifications, destination: 'notifications'),
  MenuItem(title: 'My Address', icon: Icons.location_on, destination: 'my-address'),
  MenuItem(title: 'My Gift Cards', icon: Icons.card_giftcard, destination: 'notifications'),
  // Add more menu items as needed
];

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: CustomAppDrawer(),
      body: CustomScrollView(
        slivers: [
          _buildInfoSec(),
          _buildMenuSec(),
        ],
      ),
    );
  }

  SliverToBoxAdapter _buildInfoSec() {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Palette.adbackgroundColor,
                      width: 3.0,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(15))
                ),
                child: Column(
                  children: [
                    Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Palette.secondaryColor,
                                    width: 2.0,
                                  ),
                                  color: Palette.adbackgroundColor
                              ),
                              child: IconButton(
                                icon: Icon(Icons.note_alt_outlined),
                                color: Palette.secondaryColor,
                                onPressed: () {

                                },
                              ),
                            )
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 10.0,top: 20.0),
                            child: Stack(
                              children: <Widget>[
                                SizedBox(
                                  height: 100,
                                  width: 100,
                                  child: CircularProgressIndicator(
                                    backgroundColor: Colors.transparent,
                                    strokeWidth: 3.0,
                                    value: 1,
                                    valueColor: AlwaysStoppedAnimation<Color>(Palette.primaryColor),
                                  ),
                                ),
                                Positioned(
                                  left: 10,
                                  top: 10,
                                  child: SizedBox(
                                    height: 80,
                                    width: 80,
                                    child: CircleAvatar(
                                      backgroundColor: Palette.primaryColor,
                                      backgroundImage: AssetImage('assets/images/avatar/avatar.png'),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text('Jennifer R. Galindo',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),),
                    Text('Jenniferrgalindo@gmail.com',style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),),
                    SizedBox(height: 5,),
                    Text('(+91) 98745 64584',style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),)
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 4,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Palette.adbackgroundColor,
                          width: 3.0,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    child: TextButton(
                      onPressed: () {
                        // Add your button logic here
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.account_balance_wallet_outlined,color: Palette.secondaryColor,size: 40,),
                          SizedBox(height: 5,),
                          Text('Wallet',style: TextStyle(
                            fontSize: 17,
                            color: Palette.secondaryColor
                          ),)
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 4,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Palette.adbackgroundColor,
                          width: 3.0,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    child: TextButton(
                      onPressed: () {
                        // Add your button logic here
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.support_agent,color: Palette.secondaryColor,size: 40,),
                          SizedBox(height: 5,),
                          Text('Support',style: TextStyle(
                              fontSize: 17,
                              color: Palette.secondaryColor
                          ),)
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 4,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Palette.adbackgroundColor,
                          width: 3.0,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    child: TextButton(
                      onPressed: () {
                        // Add your button logic here
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.payment,color: Palette.secondaryColor,size: 40,),
                          SizedBox(height: 5,),
                          Text('Payments',style: TextStyle(
                              fontSize: 17,
                              color: Palette.secondaryColor
                          ),)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildMenuSec() {
    return SliverToBoxAdapter(
      child: Container(
        height: 300,
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: menuItems.length,
                itemBuilder: (context, index) {
                  MenuItem menuItem = menuItems[index];
                  return Container(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.grey, // Set your desired border color here
                          width: 0.5, // Set the width of the border
                        ),
                      ),
                    ),
                    child: ListTile(
                      leading: Icon(menuItem.icon,color: Palette.secondaryColor,size: 30,),
                      title: Text(menuItem.title,style: TextStyle(
                          fontSize: 18,
                          color: Palette.secondaryColor,
                          fontWeight: FontWeight.bold
                      ),),
                      onTap: () {
                        Get.toNamed(menuItem.destination as String);
                      },
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

}
