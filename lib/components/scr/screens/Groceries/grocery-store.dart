import 'package:flutter/material.dart';
import 'package:retaurant_app_02/components/search_box.dart';
import 'package:retaurant_app_02/scr/screens/all_widgets/category_list.dart';
import 'package:retaurant_app_02/scr/screens/all_widgets/item_list.dart';
import 'package:tuple/tuple.dart';

class GroceryStore extends StatelessWidget {
  const GroceryStore({Key key}) : super(key: key);

  static const List<Tuple3> tutorials = [
    const Tuple3<String, String, String>(
      "asset/images/grocery1.jpg",
      'Broasted Express. ',
      'Vegetables, Fruits,',
    ),
    const Tuple3<String, String, String>(
      "asset/images/grocery2.jpg",
      'Grill n Rice Restaurant. ',
      'American, Italian, Chinees',
    ),
    const Tuple3<String, String, String>(
      "asset/images/grocery1.jpg",
      'Bakery Blocks. ',
      '🙂Okay  .  Delievery: Rs 1000.',
    ),
    const Tuple3<String, String, String>(
      "asset/images/beyond-meat-mcdonalds.png",
      'Bakery Blocks. ',
      '🙂Okay  .  Delievery: Rs 1000.',
    ),
    const Tuple3<String, String, String>(
      "asset/images/dominos.png",
      'Bakery Blocks. ',
      '🙂Okay  .  Delievery: Rs 1000.',
    ),
    const Tuple3<String, String, String>(
      "asset/images/beyond-meat-mcdonalds.png",
      'Bakery Blocks. ',
      '🙂Okay  .  Delievery: Rs 1000.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            iconTheme: IconThemeData(
              color: Colors.white,
            ),
            backgroundColor: Colors.orange[900],
            expandedHeight: 120,
            pinned: true,
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                'Eataly Retail',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              background: Image.asset(
                "asset/images/grocery-store.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverPersistentHeader(
            delegate: CustomSliverDelegate(
              expandedHeight: 50,
              child: Container(
                color: Colors.white,
                height: 50,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 5,
                    right: 5,
                    top: 5,
                  ),
                  child: SearchBox(),
                ),
              ),
            ),
            pinned: false,
          ),
          SliverPersistentHeader(
            delegate: CustomSliverDelegate(
              expandedHeight: 70,
              child: Container(
                color: Colors.white,
                height: 70,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 5,
                    right: 5,
                    top: 5,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 80,
                        height: 30,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 0.0,
                            ),
                          ),
                        ),
                        child: Text('Witin 75 mins\nDelivery',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                            )),
                      ),
                      Container(
                        width: 80,
                        height: 30,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 0.0,
                            ),
                          ),
                        ),
                        child: Text('Witin 75 mins\nDelivery',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                            )),
                      ),
                      Container(
                        width: 80,
                        height: 30,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 0.0,
                            ),
                          ),
                        ),
                        child: Text('Witin 75 mins\nDelivery',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            pinned: false,
          ),
          SliverPersistentHeader(
            delegate: CustomSliverDelegate(
              expandedHeight: 65,
              child: Container(
                color: Colors.white,
                height: 70,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 5,
                    right: 5,
                    top: 2,
                  ),
                  child: Container(
                    child: CategoryList(),
                  ),
                ),
              ),
            ),
            pinned: true,
          ),
          SliverPersistentHeader(
            delegate: CustomSliverDelegate(
              expandedHeight: 270,
              child: Container(
                child: ItemList(),
              ),
            ),
          ),
          SliverPersistentHeader(
            delegate: CustomSliverDelegate(
              expandedHeight: 270,
              child: Container(
                child: ItemList(),
              ),
            ),
          ),
          SliverPersistentHeader(
            delegate: CustomSliverDelegate(
              expandedHeight: 270,
              child: Container(
                child: ItemList(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  menuText(icon, title) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        InkWell(
          onTap: () {},
          child: Icon(
            icon,
            size: 25,
            color: Colors.black,
          ),
        ),
        SizedBox(
          width: 4,
        ),
        InkWell(
          onTap: () {},
          child: Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
          ),
        ),
      ],
    );
  }
}

class CustomSliverDelegate extends SliverPersistentHeaderDelegate {
  final double expandedHeight;
  final Widget child;

  CustomSliverDelegate({
    @required this.expandedHeight,
    @required this.child,
  });

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => expandedHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
