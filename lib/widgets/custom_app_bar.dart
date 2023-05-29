import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ggpl/config/palette.dart';
import 'package:ggpl/config/routes.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget{
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {

    String currentRoute = Get.currentRoute;
    String currentRouteTitle = '';

    if (!currentRoute.startsWith('/')) {
      currentRoute = '/$currentRoute';
    }

    GetPage? currentPage = Routes.routes.firstWhere((route) => route.name == currentRoute,
        orElse: () => GetPage(name: '', page: () => Container(), title: 'Default Title'));

    return Container(
      decoration: BoxDecoration(
        color: Palette.primaryColor
      ),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: AppBar(
        toolbarHeight: 80,
        backgroundColor: Palette.primaryColor,
        elevation: 0,
        leading: Row(
          children: [
            Get.currentRoute == 'home' ?
            IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              ),
              iconSize: 28.0,
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ) : IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              iconSize: 28.0,
              onPressed: () {
                Get.back();
              },
            )
          ],
        ),
        title: Get.currentRoute == 'home' ? Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Grounded Goodness'),
                Text('GROCERY SHOPPING STORE',style: TextStyle(fontSize: 12),)
              ],
            ),
            Icon(
              Icons.person_2_outlined,
              size: 40,
            )
          ],
        ) : Text('${currentPage.title}'),
      ),
    );
  }
}
