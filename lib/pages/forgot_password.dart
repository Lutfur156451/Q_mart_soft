import 'package:flutter/material.dart';
import 'package:q_mart/pages/signup.dart';
import 'package:q_mart/pages/login.dart';

//My Own Imports
import 'package:q_mart/Animation/fadeIn.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: ListView(

        children: <Widget>[


          Center(
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(right: 50.0, left: 50.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 120.0,
                    height: 120.0,
                    child: Image.asset('assets/logo.png'),

                  ),
                  SizedBox(
                    height: 30.0,
                  ),

                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: TextField(
                        

                        decoration: InputDecoration(
                          border: InputBorder.none,
                          alignLabelWithHint:true ,
                          isDense: true,
                          

                          fillColor: Theme.of(context).cardColor,
                          hintText: 'Registered Email Address',
                          filled: true,

                          contentPadding:
                              const EdgeInsets.only(top: 12.0, bottom: 12.0),
                        ),
                      ),
                    ),
                  
                  SizedBox(height: 50.0),
                  FadeIn(
                    1.6,
                    InkWell(
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Container(
                          height: 45.0,
                          child: Material(
                            borderRadius: BorderRadius.circular(20.0),
                           
                            color: Theme.of(context).primaryColor,
                            borderOnForeground: false,
                            elevation: 5.0,
                            child: GestureDetector(
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[

                                    SizedBox(
                                      width: 7.0,
                                    ),
                                    Text(
                                      "RESET PASSWORD",
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: Theme.of(context).cardColor,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Signup()),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  FadeIn(
                    1.8,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'go to',
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 15.0,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        InkWell(
                          child: Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 18.0,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Login()),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
