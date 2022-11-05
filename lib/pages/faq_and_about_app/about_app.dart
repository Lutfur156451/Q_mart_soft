import 'package:flutter/material.dart';

class AboutApp extends StatefulWidget {
  @override
  _AboutAppState createState() => _AboutAppState();
}

class _AboutAppState extends State<AboutApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About App'),
        titleSpacing: 0.0,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Card(
              color: Theme.of(context).backgroundColor,
              child: Container(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Q mart Ecommerce App UI in Flutter',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Text('Q mart is a multipurpose ecommerce app ui template. Q mart is built in flutter. Flutter is a Hybrid App Development Platform. So, Q mart Compatible with Android and iOs both.',
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.grey
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Text('Q mart is a developed by Render Code. We are expert flutter developer team.',
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.grey
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Text('Thanks for Installing our App',
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.black
                        ),
                      ),
                    ),

                    Divider(height: 1.0,),

                    Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Text('render_code',
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Theme.of(context).primaryColor
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}