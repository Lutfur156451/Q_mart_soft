import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// My Own Imports
import 'package:q_mart/Animation/slide_left_rout.dart';
import 'package:q_mart/pages/cart.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  int notification = 2;

  final notificationList = [
    {
      'title': 'Biggest Offers on Mobiles!',
      'description':
          'Bestselling Mobiles at Lowest Prices. Avail 10% Instant Discount* on HDFC Cards. Only till Dec 5th!'
    },
    {
      'title': 'Biggest Sale Of The Year!',
      'description':
          'Biggest Sale of the year started now only on Qmart. Browse product and start shopping now. Hurry!'
    },
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.7;

    return Scaffold(


      appBar: AppBar(

        elevation: 0,
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        title: Text('My Notifications'),
        titleSpacing: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Badge(
              badgeContent: Text('3'),
              badgeColor: Theme.of(context).canvasColor,
              child: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
            ),
            onPressed: () {
              Navigator.push(context, SlideLeftRoute(page: CartPage()));
            },
          ),
        ],
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: (notification == 0)
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.bellSlash,
                    color: Theme.of(context).disabledColor,
                    size: 60.0,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'No Notifications',
                    style: TextStyle(color: Theme.of(context).disabledColor),
                  )
                ],
              ),
            )
          : ListView.builder(
              itemCount: notificationList.length,
              itemBuilder: (context, index) {
                final item = notificationList[index];
                return Dismissible(
                  key: Key('$item'),
                  onDismissed: (direction) {
                    setState(() {
                      notificationList.removeAt(index);
                      notification--;
                    });

                    // Then show a snackbar.
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("${item['title']} dismissed")));
                  },
                  // Show a red background as the item is swiped away.
                  background: Container(color: Theme.of(context).errorColor),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    elevation: 0,
                    color: Theme.of(context).cardColor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[


                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Container(

                            width: width,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[

                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    '${item['title']}',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                        color: Theme.of(context).disabledColor
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 4.0,
                                      right: 8.0,
                                      left: 8.0,
                                      bottom: 8.0),
                                  child: Text(
                                    '${item['description']}',
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      height: 1.6,
                                       color: Theme.of(context).disabledColor.withOpacity(0.6)
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(

                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundColor: Theme.of(context).backgroundColor,
                            child: Icon(
                              FontAwesomeIcons.bell,
                              color: Theme.of(context).primaryColor,
                              size: 30.0,
                            ),
                            radius: 40.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
    );
  }
}
