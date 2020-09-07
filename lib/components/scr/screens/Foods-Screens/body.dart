import 'package:flutter/material.dart';
import 'package:retaurant_app_02/scr/screens/Foods-Screens/foods.dart';
import 'package:retaurant_app_02/scr/screens/Restaurant_Details/free_delivery.dart';
import 'package:retaurant_app_02/scr/screens/Groceries/grocery-offers.dart';
import 'package:retaurant_app_02/scr/screens/Restaurant_Details/special_offers.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          FreeOffers(),
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
                  "Top Trending Brands",
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
          SizedBox(
            height: 10,
          ),
          AllFoods(),
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
                  "All Restaurants",
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
          SizedBox(
            height: 5,
          ),
          AllRestaurants(),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}

class AllRestaurants extends StatelessWidget {
  const AllRestaurants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 15, right: 2, left: 15),
            child: InkWell(
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
              child: Column(
                children: [
                  Container(
                    height: 120,
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          "asset/images/mcdonalds.jpg",
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 5,
                      right: 240,
                    ),
                    child: Container(
                      child: Text(
                        "MCDONALDS.",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 5,
                      right: 208,
                    ),
                    child: Container(
                      child: Text(
                        "🙂Okay  .  Delievery: Rs 1000.",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 2, left: 15),
            child: InkWell(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) {
                //       return RestaurantDetails();
                //     },
                //   ),
                // );
              },
              child: Column(
                children: [
                  Container(
                    height: 120,
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("asset/images/KFC.jpg"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 5,
                      right: 300,
                    ),
                    child: Container(
                      child: Text(
                        "KFC.",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 5,
                      right: 208,
                    ),
                    child: Container(
                      child: Text(
                        "🙂Okay  .  Delievery: Rs 1000.",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 2, left: 15),
            child: InkWell(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) {
                //       return RestaurantDetails();
                //     },
                //   ),
                // );
              },
              child: Column(
                children: [
                  Container(
                    height: 120,
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("asset/images/herfy.jpg"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 5,
                      right: 290,
                    ),
                    child: Container(
                      child: Text(
                        "HERFY.",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 5,
                      right: 208,
                    ),
                    child: Container(
                      child: Text(
                        "🙂Okay  .  Delievery: Rs 1000.",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 2, left: 15),
            child: InkWell(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) {
                //       return RestaurantDetails();
                //     },
                //   ),
                // );
              },
              child: Column(
                children: <Widget>[
                  Container(
                    height: 120,
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("asset/images/dominos.png"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 5,
                      right: 235,
                    ),
                    child: Container(
                      child: Text(
                        "Dominos Pizza.",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 5,
                      right: 208,
                    ),
                    child: Container(
                      child: Text(
                        "🙂Okay  .  Delievery: Rs 1000.",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 4,
          ),
        ],
      ),
    );
  }
}

class AllFoods extends StatelessWidget {
  const AllFoods({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 15, right: 2, left: 15),
            child: InkWell(
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
              child: Column(
                children: [
                  Container(
                    height: 100,
                    width: 220,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                            "asset/images/beyond-meat-mcdonalds.png"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 5,
                      right: 105,
                    ),
                    child: Container(
                      child: Text(
                        "Bakery Blocks.",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 5,
                      right: 80,
                    ),
                    child: Container(
                      child: Text(
                        "🙂Okay  .  Delievery: Rs 2000.",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 2, left: 15),
            child: InkWell(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) {
                //       return RestaurantDetails();
                //     },
                //   ),
                // );
              },
              child: Column(
                children: [
                  Container(
                    height: 100,
                    width: 220,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("asset/images/food2.jpg"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 5,
                      right: 105,
                    ),
                    child: Container(
                      child: Text(
                        "Bakery Blocks.",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 5,
                      right: 80,
                    ),
                    child: Container(
                      child: Text(
                        "🙂Okay  .  Delievery: Rs 1000.",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 2, left: 15),
            child: InkWell(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) {
                //       return RestaurantDetails();
                //     },
                //   ),
                // );
              },
              child: Column(
                children: [
                  Container(
                    height: 100,
                    width: 220,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("asset/images/food.jpg"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 5,
                      right: 105,
                    ),
                    child: Container(
                      child: Text(
                        "Bakery Blocks.",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 5,
                      right: 80,
                    ),
                    child: Container(
                      child: Text(
                        "🙂Okay  .  Delievery: Rs 1000.",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 2, left: 15),
            child: InkWell(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) {
                //       return RestaurantDetails();
                //     },
                //   ),
                // );
              },
              child: Column(
                children: [
                  Container(
                    height: 100,
                    width: 220,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("asset/images/food3.jpg"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 5,
                      right: 105,
                    ),
                    child: Container(
                      child: Text(
                        "Bakery Blocks.",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 5,
                      right: 80,
                    ),
                    child: Container(
                      child: Text(
                        "🙂Okay  .  Delievery: Rs 1000.",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 4,
          ),
        ],
      ),
    );
  }
}

class FreeOffers extends StatelessWidget {
  const FreeOffers({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 15, right: 2, left: 15),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SpecialOffers();
                  },
                ),
              );
            },
            child: Container(
              height: 100,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("asset/images/burger.png"),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 1,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15, right: 2, left: 10),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return FreeDelivery();
                  },
                ),
              );
            },
            child: Container(
              height: 100,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("asset/images/food2.jpg"),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 1,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15, right: 2, left: 10),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return GroceryOffers();
                  },
                ),
              );
            },
            child: Container(
              height: 100,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("asset/images/burger.png"),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
