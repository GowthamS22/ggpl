import 'package:flutter/material.dart';
import 'package:ggpl/components/custom_radio_button.dart';
import 'package:ggpl/widgets/widgets.dart';

import '../../../config/palette.dart';

class AddAddressScreen extends StatefulWidget {
  const AddAddressScreen({Key? key}) : super(key: key);

  @override
  State<AddAddressScreen> createState() => _AddAddressScreenState();
}

class _AddAddressScreenState extends State<AddAddressScreen> {

  List<String> addressTypes = ['HOME','OFFICE','OTHER'];
  String _selectedValue = 'HOME';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: CustomAppDrawer(),
      body: CustomScrollView(
        slivers: [
          _buildAddressForm(),
        ],
      ),
    );
  }

  SliverToBoxAdapter _buildAddressForm() {
    return SliverToBoxAdapter(
      child: Form(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Personal Details',style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Enter First Name',
                            labelStyle: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold
                            )// The label text
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Expanded(
                    child: Container(
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Enter Last Name',
                            labelStyle: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold
                            )// The label text
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 10,),
              Container(
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Contact Number to say hello',
                      labelStyle: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold
                      )// The label text
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Text('Address Details',style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
              ),),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelText: 'House No',
                            labelStyle: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold
                            )// The label text
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Expanded(
                    child: Container(
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Apartment Name',
                            labelStyle: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold
                            )// The label text
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 10,),
              Container(
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Street Details',
                      labelStyle: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold
                      )// The label text
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Area Details',
                      labelStyle: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold
                      )// The label text
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelText: 'City / District',
                            labelStyle: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold
                            )// The label text
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Expanded(
                    child: Container(
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Pincode',
                            labelStyle: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold
                            )// The label text
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Text('Choose Nick Name for This Address',style: TextStyle(
                fontSize: 18,
                color: Colors.grey
              ),),
              SizedBox(height: 20,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: addressTypes.map((type){
                  return CustomRadioButton(
                    title: type,
                    isSelected: _selectedValue,
                    onChanged: (value) {
                      _selectedValue = value;
                    },
                  );
                }).toList(),
              ),
              Divider(
                height: 50,
                color: Colors.grey,
                thickness: 1,
              ),
              Container(
                width: double.infinity,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {

                  },
                  child: Text('Add Address',style: TextStyle(
                      fontSize: 16
                  ),),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Palette.primaryColor),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ))
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
