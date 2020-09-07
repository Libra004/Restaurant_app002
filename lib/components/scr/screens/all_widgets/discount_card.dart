import 'package:flutter/material.dart';
import 'package:retaurant_app_02/components/constants.dart';
import 'package:retaurant_app_02/scr/screens/Foods-Screens/foods.dart';
import 'package:retaurant_app_02/scr/screens/Groceries/grocery-store.dart';
import 'package:retaurant_app_02/scr/screens/Restaurant_Details/all_restaurants.dart';

class Foods extends StatelessWidget {
  const Foods({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, right: 35, left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "What whould you like to order.",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: kTextColor,
                fontSize: 20,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return FoodsScreen();
                  },
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
              width: double.infinity,
              height: 185,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("asset/images/food.jpg"),
                ),
              ),

              child: Padding(
                padding: const EdgeInsets.only(top: 130, right: 20, left: 10),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0,
                          ),
                          children: [
                            TextSpan(
                              text: "Food",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // ),
            ),
          ),
        ],
      ),
    );
  }
}

class Groceries extends StatelessWidget {
  const Groceries({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0, right: 70, left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "Groceries and more 🛒.",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: kTextColor,
                fontSize: 20,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return GroceryStore();
                  },
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              width: double.infinity,
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    "asset/images/food4.png",
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              children: <Widget>[
                Text(
                  "Eataly Retail.",
                  style: TextStyle(
                    color: kTextColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              children: <Widget>[
                Text(
                  "Grocery",
                  style: TextStyle(
                    color: kTextColor,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              children: <Widget>[
                Text(
                  "Delievery: Rs 1000.",
                  style: TextStyle(
                    color: kTextColor,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Desserts extends StatelessWidget {
  const Desserts({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 2, right: 100, left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "All day desserts 🍩🍰🍦",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: kTextColor,
                fontSize: 20,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return FoodsScreen();
                  },
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    "asset/images/beyond-meat-mcdonalds.png",
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              children: <Widget>[
                Text(
                  "Bakery Blocks.",
                  style: TextStyle(
                    color: kTextColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              children: <Widget>[
                Text(
                  "Desserts",
                  style: TextStyle(
                    color: kTextColor,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              children: <Widget>[
                Text(
                  "🙂Okay  .  Delievery: Rs 1000.",
                  style: TextStyle(
                    color: kTextColor,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class RestaurantButton extends StatelessWidget {
  const RestaurantButton({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: 1.0,
            horizontal: 15.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                color: Colors.orange[900],
                elevation: 5,
                height: 45,
                splashColor: Colors.green[600],
                shape: StadiumBorder(),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return RestaurantsList();
                      },
                    ),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text('View all restaurants',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
