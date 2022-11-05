import 'package:flutter/material.dart';
import 'package:q_mart/pages/login.dart';

class AccountSetting extends StatefulWidget {
  @override
  _AccountSettingState createState() => _AccountSettingState();
}

class _AccountSettingState extends State<AccountSetting> {
  @override
  Widget build(BuildContext context) {
    ListTile getListTile(title) {

      // Widget for common ListTile
      return ListTile(
        title: Text(
          title,
          style: TextStyle(color:Theme.of(context).disabledColor, fontSize: 18.0),
        ),
        trailing: Icon(
          Icons.keyboard_arrow_right,
          color:Theme.of(context).disabledColor,
        ),
        onTap: () {},
      );
    }

    // Widget for common divider
    Padding getDivider() {
      return Padding(
        padding: EdgeInsets.only(left: 12.0),
        child: Divider(
          height: 1.0,
        ),
      );
    }

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text('Account Setting'),
        titleSpacing: 0.0,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            ),
            color: Theme.of(context).primaryColor,

            child: Container(
              decoration: BoxDecoration(   color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.circular(20)
              ),
              margin: EdgeInsets.only(top: 5.0),

              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Card(
                    color: Theme.of(context).primaryColor,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 8),
                      child: Text(
                        'Account',
                        style: TextStyle(fontSize: 21.0, fontWeight: FontWeight.bold,color: Theme.of(context).backgroundColor),
                      ),
                    ),
                  ),
                  getListTile('Address'),
                  getDivider(),
                  getListTile('Telephone'),
                  getDivider(),
                  getListTile('Email'),
                  getDivider(),
                ],
              ),
            ),
          ),
          Card(shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
          ),
            color: Theme.of(context).primaryColor,

            child: Container(decoration: BoxDecoration(   color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.circular(20)
            ),
              margin: EdgeInsets.only(top: 5.0),

              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Card( color: Theme.of(context).primaryColor,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0,right:8),
                      child: Text(
                        'Setting',
                        style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold,color: Theme.of(context).backgroundColor),
                      ),
                    ),
                  ),
                  getListTile('Order Notifications'),
                  getDivider(),
                  getListTile('Discount Notifications'),
                  getDivider(),
                  getListTile('Credit Card'),
                  getDivider(),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Login()));
            },
            child: Card( color: Colors.red,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              child: Container(
                decoration: BoxDecoration(     color: Colors.red,
                    borderRadius: BorderRadius.circular(20)
                ),
                margin: EdgeInsets.only(top: 5.0, bottom: 5.0),


                child: Padding(
                  padding: const EdgeInsets.only(left:14.0,top: 5,bottom: 5),
                  child: Text(
                    'Logout',
                    style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold,color: Theme.of(context).backgroundColor),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
