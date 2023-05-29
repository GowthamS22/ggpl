import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ggpl/models/category.dart';

class CategoryItem extends StatelessWidget {

  final Category category;
  const CategoryItem({required this.category});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed('category-products',arguments: {'id': category.id,});
      },
      child: Column(
        children: [
          Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  category.imageUrl,
                  height: 100,
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.lightGreen,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
          ),
          SizedBox(height: 8,),
          Text(
            category.name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
