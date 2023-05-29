import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ggpl/config/palette.dart';
import 'package:ggpl/screens/screens.dart';

class AppbarMenus {
  final String title;
  final IconData icon;
  final Widget destination;
  AppbarMenus({required this.title, required this.icon,required this.destination});
}

List<AppbarMenus> appbarmenus = [
  AppbarMenus(title: 'Home', icon: Icons.home_outlined, destination: HomeScreen()),
  AppbarMenus(title: 'My Account', icon: Icons.account_circle, destination: HomeScreen()),
  AppbarMenus(title: 'Smart Basket / My List', icon: Icons.shopping_basket_outlined, destination: HomeScreen()),
  AppbarMenus(title: 'Offers', icon: Icons.local_offer_outlined, destination: HomeScreen()),
  AppbarMenus(title: 'Logout', icon: Icons.logout, destination: HomeScreen()),
];

class CustomAppDrawer extends StatelessWidget {
  const CustomAppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Palette.primaryColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 1),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text('Hello, Jeffrey A. Gibson',style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),textAlign: TextAlign.center),
                ),
                SizedBox(height: 5,),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.white70,
                      border: Border.all(color: Colors.white, width: 1),
                      borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.location_on,color: Palette.primaryColor,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('DELIVERTING TO HOME',style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold
                          ),textAlign: TextAlign.center),
                          Text('test',style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),textAlign: TextAlign.center),
                        ],
                      ),
                      IconButton(
                        onPressed: () {

                        },
                        icon: Icon(Icons.edit_outlined,color: Colors.black,),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.symmetric(horizontal: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: appbarmenus.length,
                    itemBuilder: (context, index) {
                      AppbarMenus menuItem = appbarmenus[index];
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

                          },
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
