import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:q_mart/pages/faq_and_about_app/about_app.dart';
import 'package:q_mart/pages/faq_and_about_app/faq.dart';

// My Own Imports
import 'package:q_mart/pages/login.dart';
import 'package:q_mart/pages/my_account/account_setting.dart';
import 'package:q_mart/pages/my_orders.dart';
import 'package:q_mart/pages/notifications.dart';
import 'package:q_mart/Animation/slide_left_rout.dart';

class MyAccount extends StatefulWidget {
  @override
  _MyAccountState createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('My Account'),
        titleSpacing: 0.0,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Container(
            width: width,
            height: 360.0,
            child: Stack(
              children: <Widget>[
                Image(
                  image: AssetImage('assets/user_profile/background.jpg'),
                  width: width,
                  height: 220.0,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 165.0,
                  right: ((width / 2) - 50.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 110.0,
                        width: 110.0,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(54.0),
                          border: Border.all(color: Theme.of(context).primaryColor, width: 5.0),
                        ),
                        child: ClipRRect(
                          borderRadius: new BorderRadius.circular(50.0),
                          child: Image(
                            image: AssetImage('assets/user_profile/user_6.jpg'),
                            height: 100.0,
                            width: 100.0,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Text(
                          'Hey roy x',
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: InkWell(
                          child: Text(
                            'Edit Profile',
                            style:
                                TextStyle(fontSize: 16.0, color: Colors.grey),
                          ),
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Card(
            elevation: 5,

            shadowColor: Colors.black12,
            color: Theme.of(context).cardColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7)
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(context, SlideLeftRoute(page: Notifications()));
              },
              child: Container(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[

                    Text(
                      'Notifications',
                      style: TextStyle(fontSize: 19.0),
                    ), SizedBox(
                      width: 25,
                    ),
                    Icon(
                      FontAwesomeIcons.bell,
                      size: 27.0,
                      color: Theme.of(context).primaryColor,
                    ),

                  ],
                ),
              ),
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
              onTap: () {
                Navigator.push(context, SlideLeftRoute(page: MyOrders()));
              },
              child: Container(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'My Orders',
                      style: TextStyle(fontSize: 19.0),
                    ),
                    Icon(
                      FontAwesomeIcons.truck,
                      size: 25.0,
                      color: Theme.of(context).primaryColor,
                    ),


                  ],
                ),
              ),
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
              onTap: () {
                Navigator.push(context, SlideLeftRoute(page: AccountSetting()));
              },
              child: Container(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Account Setting',
                      style: TextStyle(fontSize: 19.0),
                    ),
                    Icon(
                      FontAwesomeIcons.cogs,
                      size: 25.0,
                      color: Theme.of(context).primaryColor,
                    ),


                  ],
                ),
              ),
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
              onTap: () {
                Navigator.push(context, SlideLeftRoute(page: FaqPage()));
              },
              child: Container(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[

                    Text(
                      'FAQ',
                      style: TextStyle(fontSize: 19.0),
                    ),
                    Icon(
                      FontAwesomeIcons.questionCircle,
                      size: 27.0,
                      color: Theme.of(context).primaryColor,
                    ),

                  ],
                ),
              ),
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
              onTap: () {
                Navigator.push(context, SlideLeftRoute(page: AboutApp()));
              },
              child: Container(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[


                    Text(
                      'About App',
                      style: TextStyle(fontSize: 19.0),
                    ),
                    Icon(
                      FontAwesomeIcons.info,
                      size: 27.0,
                      color: Theme.of(context).primaryColor,
                    ),
                  ],
                ),
              ),
            ),
          ),
          

          Card(
            elevation: 2,

            shadowColor: Colors.black12,
            color: Theme.of(context).errorColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7)
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Login()));
              },
              child: Container(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[


                    Text(
                      'Logout',
                      style: TextStyle(fontSize: 19.0,color: Theme.of(context).backgroundColor,fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      FontAwesomeIcons.signOutAlt,
                      size: 27.0,
                      color: Theme.of(context).backgroundColor,
                    ),
                  ],
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
