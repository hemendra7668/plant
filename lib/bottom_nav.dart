import 'package:flutter/material.dart';

class Bottom_nav {
  static Stack botom_navbar_item() {
    return const Stack(
      // fit: StackFit.expand,
      children: [
        IconButton(onPressed: null, icon: Icon(Icons.home_outlined)),
        Icon(Icons.favorite_sharp),
        Icon(Icons.shopify_outlined),
        Icon(Icons.person)
      ],
    );
  }
}
