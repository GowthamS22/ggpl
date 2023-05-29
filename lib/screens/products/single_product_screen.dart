import 'package:flutter/material.dart';
import 'package:ggpl/components/single_product_item.dart';
import 'package:ggpl/widgets/widgets.dart';

class SingleProductScreen extends StatefulWidget {
  const SingleProductScreen({Key? key}) : super(key: key);

  @override
  State<SingleProductScreen> createState() => _SingleProductScreenState();
}

class _SingleProductScreenState extends State<SingleProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: CustomAppDrawer(),
      body: CustomScrollView(
        slivers: [
          _buildProductInfo(),
        ],
      ),
    );
  }

  SliverToBoxAdapter _buildProductInfo() {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: SingleProductItem(),
      ),
    );
  }
}
