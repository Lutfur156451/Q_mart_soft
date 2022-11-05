import 'dart:async';

import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:q_mart/pages/category/top_offers.dart';

// My Own Imports
import 'package:q_mart/pages/category/top_offers_pages/get_products.dart';
import 'package:q_mart/Animation/slide_left_rout.dart';
import 'package:q_mart/pages/cart.dart';
import 'package:q_mart/pages/wishlist.dart';

class WomensWear extends StatefulWidget {
  final PassData data;

  WomensWear({Key key, this.data}) : super(key: key);

  @override
  _WomensWearState createState() => _WomensWearState();
}

class _WomensWearState extends State<WomensWear> {
  bool progress = true;

  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 1), () {
      setState(() {
        progress = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          widget.data.title,
          style: TextStyle(
            color: Theme.of(context).cardColor,
          ),
        ),
        titleSpacing: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Badge(
              badgeContent: Text('3'),
              badgeColor: Theme.of(context).cardColor,
              child: Icon(
                Icons.shopping_cart,
                color: Theme.of(context).cardColor,
              ),
            ),
            onPressed: () {
              Navigator.push(context, SlideLeftRoute(page: CartPage()));
            },
          ),
          IconButton(
            icon: Icon(
              Icons.favorite,
              color: Theme.of(context).cardColor,
            ),
            onPressed: () {
              Navigator.push(context, SlideLeftRoute(page: WishlistPage()));
            },
          ),
        ],
      ),
      body: (progress)
          ? Center(
              child: SpinKitFoldingCube(
                color: Theme.of(context).primaryColor,
                size: 35.0,
              ),
            )
          : GetProducts(),
    );
  }
}
