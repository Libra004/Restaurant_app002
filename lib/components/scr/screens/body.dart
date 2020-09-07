import 'package:flutter/material.dart';
import 'screens/all_widgets/discount_card.dart';
import 'screens/Foods-Screens/body.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Foods(),
          SizedBox(
            height: 10,
          ),
          Groceries(),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 2, left: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "All Day Desserts",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          AllFoods(),
          SizedBox(
            height: 30,
          ),
          RestaurantButton(),
        ],
      ),
    );
  }
}
