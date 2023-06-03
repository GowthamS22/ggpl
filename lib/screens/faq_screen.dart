import 'package:flutter/material.dart';
import 'package:ggpl/widgets/widgets.dart';

class FaqScreen extends StatefulWidget {
  const FaqScreen({Key? key}) : super(key: key);

  @override
  State<FaqScreen> createState() => _FaqScreenState();
}

class _FaqScreenState extends State<FaqScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: CustomAppDrawer(),
      body: CustomScrollView(
        slivers: [
          _buildFaqSec(),
        ],
      ),
    );
  }

  SliverToBoxAdapter _buildFaqSec() {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('1. How it will take to delivery?', style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 15,),
            Text('Receive notifications related to your order status, payments and support Aut haec tibi, Torquate, sunt vituperanda aut patrocinium voluptatis repudiandum. Quod si ita se habeat, non possit beatam praestare vitam sapientia.',style: TextStyle(
              fontSize: 16,
              color: Colors.grey
            ),),
            SizedBox(height: 30,),
            Text('2. What is Refund System?', style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 15,),
            Text('Receive notifications related to your order status, payments and support Aut haec tibi, Torquate, sunt vituperanda aut patrocinium. \n\n Voluptatis repudiandum. Quod si ita se habeat, non possit beatam praestare vitam sapientia Aliter enim nosmet ipsos nosse non possumus. O magnam vim ingenii causamque iustam quovis conventu te omnia facere, ne doleas. Ratio enim nostra consentit pugnant Stoici cum Peripateticis. Facit igitur Lucius noster prudenter, qui audire de summo bono potissimum velit Non est igitur voluptas bonum.',style: TextStyle(
              fontSize: 16,
              color: Colors.grey
            ),),
            SizedBox(height: 30,),
            Text('3. How do i return my items?', style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 15,),
            Text('Receive notifications related to your order status, payments and support Aut haec tibi, Torquate, sunt vituperanda aut patrocinium voluptatis repudiandum. Quod si ita se habeat, non possit beatam praestare vitam sapientia.',style: TextStyle(
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
