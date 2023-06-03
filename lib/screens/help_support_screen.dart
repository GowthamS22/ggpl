import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ggpl/controllers/help_controller.dart';
import 'package:ggpl/widgets/widgets.dart';

class HelpSupportScreen extends StatefulWidget {
  const HelpSupportScreen({Key? key}) : super(key: key);

  @override
  State<HelpSupportScreen> createState() => _HelpSupportScreenState();
}

class _HelpSupportScreenState extends State<HelpSupportScreen> {

  final HelpController helpController = Get.put(HelpController());

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: CustomAppBar(),
      drawer: CustomAppDrawer(),
      body: CustomScrollView(
        slivers: [
          _buildHelpSec()
        ],
      ),
    );
  }

  SliverToBoxAdapter _buildHelpSec() {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: helpController.help.length,
              itemBuilder: (context, index) {
                final help = helpController.help[index];
                return ExpansionPanelList(
                  elevation: 0,
                  expandedHeaderPadding: EdgeInsets.symmetric(vertical: 5),
                  expansionCallback: (panelIndex, isExpanded) {
                    setState(() {
                      help.status = !isExpanded;
                    });
                  },
                  children: [
                    ExpansionPanel(
                      headerBuilder: (context, isExpanded) {
                        return ListTile(
                          title: Text(help.title,style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),),
                        );
                      },
                      body: Container(
                        decoration: BoxDecoration(

                        ),
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: ListTile(
                          title: Text(help.description,style: TextStyle(
                              color: Colors.grey
                          ),),
                        ),
                      ),
                      isExpanded: help.status,
                      canTapOnHeader: true,
                    ),
                  ],
                );
              },
            ),

          ],
        ),
      ),
    );
  }

}
