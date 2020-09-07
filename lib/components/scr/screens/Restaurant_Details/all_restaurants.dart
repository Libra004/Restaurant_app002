import 'package:flutter/material.dart';
import 'package:tuple/tuple.dart';

class RestaurantsList extends StatelessWidget {
  const RestaurantsList({Key key}) : super(key: key);

  static const List<Tuple3> tutorials = [
    const Tuple3<String, String, String>(
      "asset/images/herfy.jpg",
      'Broasted Express. ',
      'Arabic, Pakistani, Asian',
    ),
    const Tuple3<String, String, String>(
      "asset/images/KFC.jpg",
      'Grill n Rice Restaurant. ',
      'American, Italian, Chinees',
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
            expandedHeight: 200,
            pinned: true,
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                'All Restaurants',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              // background: Image.asset(
              //   "asset/images/delivery.jpg",
              //   fit: BoxFit.cover,
              // ),
            ),
          ),
          SliverPersistentHeader(
            delegate: CustomSliverDelegate(
              expandedHeight: 70,
              child: Container(
                height: 70,
                margin: EdgeInsets.only(left: 0, right: 0, top: 0, bottom: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 2),
                      blurRadius: 5,
                      color: Colors.grey,
                      // Color(0xFFB0CCE1).withOpacity(0.32),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    menuText(Icons.tune, 'Filters'),
                    Divider(
                      height: 30,
                      color: Colors.black,
                    ),
                    menuText(Icons.restaurant, 'Cuisines'),
                    Divider(
                      height: 30,
                      color: Colors.black,
                    ),
                    menuText(Icons.search, 'Search'),
                  ],
                ),
              ),
            ),
            pinned: true,
          ),
          SliverFixedExtentList(
            itemExtent: 230,
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return _buildListItem(tutorials[index]);
              },
              childCount: tutorials.length,
            ),
          ),
        ],
      ),
    );
  }

  Card _buildListItem(Tuple3 tutorial) {
    return Card(
      margin: const EdgeInsets.all(5),
      child: InkWell(
        onTap: () {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 120,
              width: 370,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    tutorial.item1,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 10, right: 10, bottom: 2, top: 0),
                child: Text(
                  tutorial.item2,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 5, right: 5, bottom: 2, top: 0),
                child: Text(
                  tutorial.item3,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ],
        ),
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
