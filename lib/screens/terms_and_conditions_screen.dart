import 'package:flutter/material.dart';
import 'package:ggpl/widgets/widgets.dart';

class TermsAndConditionsScreen extends StatefulWidget {
  const TermsAndConditionsScreen({Key? key}) : super(key: key);

  @override
  State<TermsAndConditionsScreen> createState() => _TermsAndConditionsScreenState();
}

class _TermsAndConditionsScreenState extends State<TermsAndConditionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: CustomAppDrawer(),
      body: CustomScrollView(
        slivers: [
          _buildTermsConditions()
        ],
      ),
    );
  }

  SliverToBoxAdapter _buildTermsConditions() {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('1. General site usage last Revisited 12 Dec 202X', style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 15,),
            Text('Receive notifications related to your order status, payments and support Aut haec tibi, Torquate, sunt vituperanda aut patrocinium voluptatis repudiandum. Quod si ita se habeat, non possit beatam praestare vitam sapientia.',style: TextStyle(
                fontSize: 16,
                color: Colors.grey
            ),),
            SizedBox(height: 30,),
            Text('2. Agreement', style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 15,),
            Text('Receive notifications related to your order status, payments and support Aut haec tibi, Torquate, sunt vituperanda aut patrocinium. Voluptatis repudiandum. Quod si ita se habeat, non possit beatam praestare vitam sapientia Aliter enim nosmet ipsos nosse non possumus.',style: TextStyle(
                fontSize: 16,
                color: Colors.grey
            ),),
            SizedBox(height: 30,),
            Text('3. Account', style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 15,),
            Text('Vim ingenii causamque iustam quovis conventu te omnia facere, ne doleas. Ratio enim nostra consentit pugnant Stoici beatam praestare vitam sapientia.',style: TextStyle(
                fontSize: 16,
                color: Colors.grey
            ),),
            SizedBox(height: 30,),
            Text('4. Relationship with Groceries', style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 15,),
            Text('Quaesita enim virtus est, non quae relinqueret naturam, sed quae tueretur. Pugnant Stoici cum Peripateticis. Ratio enim nostra consentit pugnant Stoici beatam praestare vitam sapientia. \n\n Diodorus, eius auditor, adiungit ad honestatem vacuitatem doloris. Ita enim vivunt quidam, ut eorum vita refellatur oratio.',style: TextStyle(
                fontSize: 16,
                color: Colors.grey
            ),),
            SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }
}
