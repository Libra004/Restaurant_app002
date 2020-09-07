import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

AppBar homeAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 2,
    leading: IconButton(
      icon: SvgPicture.asset("asset/icons/menu.svg"),
      onPressed: () {},
    ),
    title: RichText(
      text: TextSpan(
        style: Theme.of(context)
            .textTheme
            // ignore: deprecated_member_use
            .title
            .copyWith(fontWeight: FontWeight.normal),
        children: [
          TextSpan(
            text: "Delievring to",
            style: TextStyle(
              fontSize: 15,
              color: Colors.black,
            ),
          ),
        ],
      ),
    ),
    actions: <Widget>[
      IconButton(
        icon: SvgPicture.asset("asset/icons/search.svg"),
        onPressed: () {},
      ),
    ],
  );
}
