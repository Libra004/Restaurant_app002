import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:retaurant_app_02/scr/screens/Foods-Screens/body.dart';

class FoodsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.orange[900],
        title: Text(
          "Delivering to",
          textAlign: TextAlign.center,
        ),
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset("asset/icons/search.svg"),
            onPressed: () {},
          ),
        ],
      ),

      // bottomNavigationBar: BottomNavBar(),
      body: Body(),
    );
  }
}
