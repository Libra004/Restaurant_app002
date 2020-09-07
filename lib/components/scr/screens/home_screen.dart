import 'package:flutter/material.dart';
import '../body.dart';
import 'all_widgets/app_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      // bottomNavigationBar: BottomNavBar(),
      body: Body(),
    );
  }
}
