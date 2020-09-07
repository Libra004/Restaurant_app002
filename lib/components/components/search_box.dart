import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchBox extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const SearchBox({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.all(1),
      height: 55,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.grey[600],
        ),
      ),
      child: TextField(
        onChanged: (onChanged) {},
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: SvgPicture.asset("asset/icons/search.svg"),
          hintText: "Search Here",
          hintStyle: TextStyle(
            color: Colors.grey[500],
          ),
        ),
      ),
    );
  }
}
