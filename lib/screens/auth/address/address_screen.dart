import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ggpl/config/palette.dart';
import 'package:ggpl/widgets/widgets.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({Key? key}) : super(key: key);

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: CustomAppBar(),
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              _buildAddressItems(),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 55,
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white
              ),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.toNamed('add-address');
                },
                child: Text('Add New Address',style: TextStyle(
                  fontSize: 16
                ),),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Palette.primaryColor),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ))
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  SliverToBoxAdapter _buildAddressItems() {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Delivery Address',style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 20,),
            Container(
              height: MediaQuery.of(context).size.height / 1.52,
              child: ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Palette.productBg,
                          width: 1.0, // Adjust the width as needed
                        ),
                      ),
                    ),
                    child: ListTile(
                      leading: Icon(Icons.location_on,color: Palette.primaryColor,size: 30,),
                      title: Text('dfsfsdfsdfs, sdhfskjfhsk'),
                      subtitle: Text('sdfsfsdfsdfs, shakshdakjd'),
                      trailing: Radio(
                        activeColor: Palette.primaryColor,
                        visualDensity: VisualDensity.standard,
                        value: 'test',
                        groupValue: false,
                        onChanged: (value) {
                          setState(() {
                            //selectedSortingOption = value as String;
                            // Perform sorting based on the selected option
                            //showProducts = true;
                            //sortProducts(value as String);
                          });
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: double.infinity,
              height: 40,
              child: ElevatedButton(
                onPressed: () {

                },
                child: Text('Use this Address',style: TextStyle(
                  fontSize: 16
                ),),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Palette.secondaryColor),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ))
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
