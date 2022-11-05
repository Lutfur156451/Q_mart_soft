import 'package:flutter/material.dart';
import 'package:q_mart/pages/cart.dart';
import 'package:q_mart/pages/category/electronic.dart';
import 'package:q_mart/pages/category/fashion.dart';
import 'package:q_mart/pages/category/mobile.dart';
import 'package:q_mart/pages/category/tvs.dart';
import 'package:q_mart/pages/faq_and_about_app/about_app.dart';
import 'package:q_mart/pages/faq_and_about_app/faq.dart';
import 'package:q_mart/pages/furniture.dart';

// My Own Imports
import 'package:q_mart/pages/login.dart';
import 'package:q_mart/pages/my_account/my_account.dart';
import 'package:q_mart/pages/my_orders.dart';
import 'package:q_mart/pages/notifications.dart';
import 'package:q_mart/pages/category/top_offers.dart';
import 'package:q_mart/pages/wishlist.dart';

import '../category/bauty.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Logout AlertDialog Start Here
    void _showDialog() {
      // flutter defined function
      showDialog(
        context: context,
        builder: (BuildContext context) {
          // return object of type Dialog
          return AlertDialog(
            title: Text(
              "Confirm",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            content: Text("Are you Sure you want to Logout?"),
            actions: <Widget>[
              // usually buttons at the bottom of the dialog
              TextButton(
                child: Text(
                  "Close",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),

              TextButton(
                child: Text(
                  "Logout",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
              ),
            ],
          );
        },
      );
    }
    // Logout AlertDialog Ends Here

    return Drawer(
      backgroundColor: Theme.of(context).backgroundColor,
      child: SafeArea(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: 80.0,
                decoration: BoxDecoration(
                  color: Theme.of(context).backgroundColor,
                  image: DecorationImage(
                    image: AssetImage('assets/logo.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            // SizedBox(height: 50,),
            // Card(
            //   child: InkWell(
            //     child: Padding(
            //       padding: const EdgeInsets.all(8.0),
            //       child: Row(
            //         children: <Widget>[
            //           Text(
            //             'Top Offers',
            //             style: TextStyle(
            //               color: Theme.of(context).disabledColor,
            //               fontSize: 15.0,
            //             ),
            //           ),
            //           SizedBox(
            //             width: 10.0,
            //           ),
            //
            //
            //           Icon(
            //             Icons.local_offer,
            //             color: Theme.of(context).primaryColor,
            //             size: 20.0,
            //           ),
            //
            //         ],
            //       ),
            //     ),
            //
            //     onTap: () {
            //       Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //             builder: (context) => TopOffers(title: 'Top Offers')),
            //       );
            //     },
            //   ),
            // ),

            Card(
              elevation: 2,

              shadowColor: Colors.black12,
              color: Theme.of(context).cardColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7)
              ),
              child: InkWell(
                child: ListTile(
                  title: Text('Top Offer'),
                  leading: Icon(
                    Icons.local_offer,
                    color: Theme.of(context).primaryColor,
                    size: 20.0,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TopOffers(title: 'Top Offers')),
                  );
                },
              ),
            ),

            Card(
              elevation: 2,

              shadowColor: Colors.black12,
              color: Theme.of(context).cardColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7)
              ),
              child: InkWell(
                child: ListTile(
                  title: Text('My Order'),
                  leading: Icon(
                    Icons.account_balance_wallet,
                    color: Theme.of(context).primaryColor,
                    size: 20.0,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyOrders()),
                  );
                },
              ),
            ),

            Card(
              elevation: 2,

              shadowColor: Colors.black12,
              color: Theme.of(context).cardColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7)
              ),
              child: InkWell(
                child: ListTile(
                  title: Text('My Cart'),
                  leading: Icon(
                    Icons.account_balance_wallet,
                    color: Theme.of(context).primaryColor,
                    size: 20.0,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CartPage()),
                  );
                },
              ),
            ),

            Card(
              elevation: 2,

              shadowColor: Colors.black12,
              color: Theme.of(context).cardColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7)
              ),
              child: InkWell(
                child: ListTile(
                  title: Text('My Wishlist'),
                  leading: Icon(
                    Icons.favorite,
                    color: Theme.of(context).primaryColor,
                    size: 20.0,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WishlistPage()),
                  );
                },
              ),
            ),

            Card(
              elevation: 2,

              shadowColor: Colors.black12,
              color: Theme.of(context).cardColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7)
              ),
              child: InkWell(
                child: ListTile(
                  title: Text('My Account'),
                  leading: Icon(
                    Icons.person,
                    color: Theme.of(context).primaryColor,
                    size: 20.0,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyAccount()),
                  );
                },
              ),
            ),

            Card(
              elevation: 2,

              shadowColor: Colors.black12,
              color: Theme.of(context).cardColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7)
              ),
              child: InkWell(
                child: ListTile(
                  title: Text('My Notification'),
                  leading: Icon(
                    Icons.notifications,
                    color: Theme.of(context).primaryColor,
                    size: 20.0,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Notifications()),
                  );
                },
              ),
            ),

            Card(
              elevation: 2,

              shadowColor: Colors.black12,
              color: Theme.of(context).cardColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7)
              ),
              child: InkWell(
                child: ListTile(
                  title: Text('Electronics'),
                  leading: Icon(
                    Icons.devices,
                    color: Theme.of(context).primaryColor,
                    size: 20.0,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            electronic(title: 'Electronics & Appliances')),
                  );
                },
              ),
            ),

            Card(
              elevation: 2,

              shadowColor: Colors.black12,
              color: Theme.of(context).cardColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7)
              ),
              child: InkWell(
                child: ListTile(
                  title: Text('Fashion'),
                  leading: Icon(
                    Icons.wc,
                    color: Theme.of(context).primaryColor,
                    size: 20.0,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => fashion(title: 'Fashion')),
                  );
                },
              ),
            ),

            Card(
              elevation: 2,

              shadowColor: Colors.black12,
              color: Theme.of(context).cardColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7)
              ),
              child: InkWell(
                child: ListTile(
                  title: Text('Home & Furniture'),
                  leading: Icon(
                    Icons.wc,
                    color: Theme.of(context).primaryColor,
                    size: 20.0,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            furniture(title: 'Home & Furniture')),
                  );
                },
              ),
            ),

            Card(
              elevation: 2,

              shadowColor: Colors.black12,
              color: Theme.of(context).cardColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7)
              ),
              child: InkWell(
                child: ListTile(
                  title: Text('TV & Appliance'),
                  leading: Icon(
                    Icons.tv,
                    color: Theme.of(context).primaryColor,
                    size: 20.0,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            tvs(title: 'TVs & Appliances')),
                  );
                },
              ),
            ),

            Card(
              elevation: 2,

              shadowColor: Colors.black12,
              color: Theme.of(context).cardColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7)
              ),
              child: InkWell(
                child: ListTile(
                  title: Text('Mobile & Tablet'),
                  leading: Icon(
                    Icons.stay_current_portrait,
                    color: Theme.of(context).primaryColor,
                    size: 20.0,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            mobile(title: 'Mobiles & Tablets')),
                  );
                },
              ),
            ),

            Card(
              elevation: 2,

              shadowColor: Colors.black12,
              color: Theme.of(context).cardColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7)
              ),
              child: InkWell(
                child: ListTile(
                  title: Text('Bauty, Book & More'),
                  leading: Icon(
                    Icons.book,
                    color: Theme.of(context).primaryColor,
                    size: 20.0,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            bauty(title: 'Beauty, Book & More')),
                  );
                },
              ),
            ),

            Card(
              elevation: 2,

              shadowColor: Colors.black12,
              color: Theme.of(context).cardColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7)
              ),
              child: InkWell(
                child: Container(
                  padding:
                      EdgeInsets.only(top: 7.0, bottom: 7.0, left: 15.0),
                  child: Text(
                    'FAQ',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 15.0,fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FaqPage()),
                  );
                },
              ),
            ),
            Card(
              elevation: 2,

              shadowColor: Colors.black12,
              color: Theme.of(context).cardColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7)
              ),
              child: InkWell(
                child: Container(
                  padding:
                      EdgeInsets.only(top: 7.0, bottom: 7.0, left: 15.0),
                  child: Text(
                    'About App',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 15.0,fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AboutApp()),
                  );
                },
              ),
            ),
            Card(
              elevation: 2,

              shadowColor: Colors.black12,
              color: Theme.of(context).primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7)
              ),

              child: InkWell(
                child: Container(
                  padding:
                      EdgeInsets.only(top: 7.0, bottom: 7.0, left: 15.0),
                  child: Center(
                    child: Text(
                      'Logout',
                      style: TextStyle(
                          color: Theme.of(context).cardColor,
                          fontSize: 15.0,fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  _showDialog();
                },
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}
