// import 'dart:html';
import 'package:flutter/material.dart';
import 'appbar.dart';
import 'package:retaurant_app_02/components/body.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: detailsAppBar(),
      body: Body(),
    );
  }
}
