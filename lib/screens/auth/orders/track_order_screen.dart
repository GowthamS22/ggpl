import 'package:flutter/material.dart';
import 'package:ggpl/widgets/widgets.dart';

class TrackOrderScreen extends StatefulWidget {
  const TrackOrderScreen({Key? key}) : super(key: key);

  @override
  State<TrackOrderScreen> createState() => _TrackOrderScreenState();
}

class _TrackOrderScreenState extends State<TrackOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: CustomAppDrawer(),
      body: CustomScrollView(
        slivers: [
          
        ],
      ),
    );
  }
}
