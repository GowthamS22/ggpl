import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ggpl/config/palette.dart';
import 'package:ggpl/widgets/widgets.dart';

class MyAddressScreen extends StatefulWidget {
  const MyAddressScreen({Key? key}) : super(key: key);

  @override
  State<MyAddressScreen> createState() => _MyAddressScreenState();
}

class _MyAddressScreenState extends State<MyAddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: CustomAppDrawer(),
      body: CustomScrollView(
        slivers: [
          _AddButton(),
          _AddressList(),
        ],
      ),
    );
  }

  SliverToBoxAdapter _AddButton() {
    return SliverToBoxAdapter(
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          color: Palette.adbackgroundColor
        ),
        child: TextButton(
          onPressed: () {
            Get.toNamed('add-address');
          },
          child: Text('   + Add New Address',style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),textAlign: TextAlign.start,),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Palette.adbackgroundColor),
            alignment: Alignment.centerLeft
          ),
        ),
      ),
    );
  }

  SliverToBoxAdapter _AddressList() {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        child: Column(
          children: [
            ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: 1,
              itemBuilder: (context, index) {
                return Container(
                  child: ListTile(
                    leading: Column(
                      children: [
                        Text('Home',style: TextStyle(
                          fontSize: 18
                        ),),
                        Icon(Icons.home_outlined,color: Palette.secondaryColor,size: 30,),
                      ],
                    ),
                    title: Text('DELIVERING TO HOME'),
                    subtitle: Text('21, Rajainager, Bangaluru'),
                    trailing: Container(
                      decoration: BoxDecoration(
                        color: Palette.adbackgroundColor,
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: PopupMenuButton<String>(
                        icon: Icon(Icons.more_horiz),
                        onSelected: (String value) {
                          print('Selected value: $value');
                        },
                        itemBuilder: (BuildContext context) {
                          return <PopupMenuEntry<String>>[
                            PopupMenuItem<String>(
                              value: 'Edit',
                              child: ListTile(
                                leading: Icon(Icons.edit),
                                title: Text('Edit'),
                              ),
                            ),
                            PopupMenuItem<String>(
                              value: 'Delete',
                              child: ListTile(
                                leading: Icon(Icons.delete),
                                title: Text('Delete'),
                              ),
                            ),
                          ];
                        },
                      ),
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
