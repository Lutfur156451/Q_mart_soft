import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

// My Own Imports
import 'package:q_mart/pages/product/product_details.dart';
import 'package:q_mart/pages/order_payment/delivery_address.dart';
import 'package:q_mart/Animation/slide_left_rout.dart';
import 'package:q_mart/pages/cart.dart';
import 'package:q_mart/pages/wishlist.dart';
import 'package:q_mart/functions/passDataToProduct.dart';

class ProductPage extends StatefulWidget {
  final PassDataToProduct productData;

  ProductPage({Key key, this.productData}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  bool favourite = false;
  int cartItem = 3;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.productData.title),
        titleSpacing: 0.0,
        backgroundColor: Theme.of(context).primaryColor,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.favorite,
              color: Theme.of(context).cardColor,
            ),
            onPressed: () {
              Navigator.push(context, SlideLeftRoute(page: WishlistPage()));
            },
          ),
          IconButton(
            icon: Badge(
              badgeContent: Text('$cartItem'),
              badgeColor: Theme.of(context).primaryColorLight,
              child: Icon(
                Icons.shopping_cart,
                color: Theme.of(context).cardColor,
              ),
            ),
            onPressed: () {
              Navigator.push(context, SlideLeftRoute(page: CartPage()));
            },
          ),
        ],
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: ProductDetails(data: widget.productData),
      bottomNavigationBar: Material(
        elevation: 5.0,
        child: Container(
          color: Theme.of(context).cardColor,
          width: width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              InkWell(
                onTap: () {
                  setState(() {
                    cartItem++;
                  });
                },
                child: Container(
                  width: width / 2,
                  height: 50.0,
                  color: Theme.of(context).primaryColor,
                  alignment: Alignment.center,
                  child: Text(
                    'Add To Cart',
                    style: TextStyle(color: Colors.black, fontSize: 15.0),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, SlideLeftRoute(page: Delivery()));
                },
                child: Container(
                  width: width / 2,
                  height: 50.0,
                  color: Theme.of(context).primaryColor,
                  alignment: Alignment.center,
                  child: Text(
                    'Buy Now',
                    style: TextStyle(color: Theme.of(context).cardColor, fontSize: 15.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
