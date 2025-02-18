import 'package:flutter/material.dart';
import 'package:flutter_app/animation/ScaleRoute.dart';
import 'package:flutter_app/widgets/BestFoodWidget.dart';
import 'package:flutter_app/widgets/BottomNavBarWidget.dart';
import 'package:flutter_app/widgets/PopularFoodsWidget.dart';
import 'package:flutter_app/widgets/SearchWidget.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFAFAFA),
        elevation: 0,
           
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SearchWidget(),
     
            PopularFoodsWidget(),
            BestFoodWidget(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBarWidget(),
    );
  }
}
