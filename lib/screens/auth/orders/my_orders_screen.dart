import 'package:flutter/material.dart';
import 'package:ggpl/config/palette.dart';
import 'package:ggpl/widgets/widgets.dart';

class MyOrdersScreen extends StatefulWidget {
  const MyOrdersScreen({Key? key}) : super(key: key);

  @override
  State<MyOrdersScreen> createState() => _MyOrdersScreenState();
}

class _MyOrdersScreenState extends State<MyOrdersScreen> with SingleTickerProviderStateMixin {

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: CustomAppDrawer(),
      body: CustomScrollView(
        slivers: [
          _buildOrdersList(),
        ],
      ),
    );
  }

  SliverToBoxAdapter _buildOrdersList() {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white
        ),
        child: Column(
          children: [
            Container(
              height: 60,
              decoration: BoxDecoration(
                color: Palette.adbackgroundColor,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                children: [
                  TabBar(
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                    controller: _tabController,
                    indicatorColor: Palette.primaryColor,

                    tabs: [
                      Tab(
                        child: Text('ALL',style: TextStyle(
                          color: Colors.black,
                          fontSize: 15
                        ),),
                      ),
                      Tab(
                        child: Text('RUNNING',style: TextStyle(
                            color: Colors.black,
                            fontSize: 15
                        ),),
                      ),
                      Tab(
                        child: Text('PREVIOUS',style: TextStyle(
                            color: Colors.black,
                            fontSize: 15
                        ),),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              child: TabBarView(
                controller: _tabController,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: EdgeInsets.all(15),
                          margin: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Palette.productBg,
                              width: 2
                            ),
                            borderRadius: BorderRadius.circular(15)
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('ORDER ID : 5641521651',style: TextStyle(
                                    fontSize: 16
                                  )),
                                  Text('24 Jun',style: TextStyle(
                                      fontSize: 16
                                  ))
                                ],
                              ),
                              SizedBox(height: 20,),

                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    child: Text('tessdst'),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    child: Text('tedsst'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
