import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:q_mart/pages/signup.dart';
import 'package:q_mart/pages/forgot_password.dart';

//My Own Imports
import 'package:q_mart/Animation/fadeIn.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // Initially password is obscure
  bool _obscureText = true;
  DateTime currentBackPressTime;

  // Toggles the password show status
  void _viewPassword() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: WillPopScope(
        child: ListView(
          children: <Widget>[



            SizedBox(height: 40.0),
            Container(
              alignment: Alignment.center,

              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    Container(
                      height: 150,width: 150,
                      decoration: new BoxDecoration(
                        image:DecorationImage(
                          image: new AssetImage('assets/logo.png'),
                        )
                      ),

                      child: Image.asset('assets/logo.png'),
                    ),

                    Column(
                      children: [
                        Center(child: Text('SIGN IN',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                        SizedBox(
                          height: 25.0,
                        ),

                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7)
                          ),
                          shadowColor: Colors.black12,
                          color: Theme.of(context).cardColor,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 12.0,left: 8,right: 8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,

                              children: <Widget>[

                                  TextField(
                                    cursorColor: Theme.of(context).primaryColor,

                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      alignLabelWithHint:true ,
                                      isDense: true,

                                      fillColor: Theme.of(context).cardColor,
                                      //hintStyle: GoogleFonts.inter(fontSize: Dimensions.fontSizeLarge, color: Theme.of(context).hintColor),
                                      filled: true,

                                      hintText: ' Email Address',

                                    ),
                                  ),
                                SizedBox(height: 5,),

                                Divider(thickness: 0.2,color: Theme.of(context).disabledColor.withOpacity(0.6),),


                                  Padding(
                                    padding: const EdgeInsets.only(left: 2.0),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        alignLabelWithHint:true ,
                                        isDense: true,
                                        fillColor: Theme.of(context).cardColor,

                                        filled: true,
                                        hintText: 'Password',
                                        suffixIcon: IconButton(
                                          icon: Icon(Icons.remove_red_eye),
                                          onPressed: _viewPassword,
                                        ),
                                        // contentPadding: const EdgeInsets.only(
                                        //     top: 12.0, bottom: 12.0),
                                      ),
                                      obscureText: _obscureText,
                                    ),
                                  ),





                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 4,),
                        Container(
                          alignment: Alignment.bottomRight,
                          child: InkWell(
                            child: Text(
                              'Forgot Password?',
                              style: TextStyle(

                                fontFamily: 'Poppins',
                                fontSize: 12.0,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ForgotPassword()),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 50.0),

                      InkWell(
                        child: Card(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16)
                          ),
                          child: Container(
                            height: 45.0,
                            child: Material(
                              borderRadius: BorderRadius.circular(17.0),

                              color: Theme.of(context).primaryColor,
                              borderOnForeground: false,

                              child: GestureDetector(
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[

                                      SizedBox(
                                        width: 7.0,
                                      ),
                                      Text(
                                        "LOG IN",
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

                    SizedBox(
                      height: 25.0,
                    ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Don\'t Have an Account?',
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
                              'Sign up',
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 16.0,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Signup()),
                              );
                            },
                          ),
                        ],
                      ),

                    SizedBox(
                      height: 15.0,
                    ),

                      Text(
                        "Continue with",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16.0,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[

                          // InkWell(
                          //   child: Container(
                          //     width: 59.0,
                          //     height: 59.0,
                          //     decoration: new BoxDecoration(
                          //       color: const Color(0xff7c94b6),
                          //       image: new DecorationImage(
                          //         image: new AssetImage('assets/fb.png'),
                          //         fit: BoxFit.cover,
                          //       ),
                          //       borderRadius: new BorderRadius.all(
                          //           new Radius.circular(30.0)),
                          //
                          //     ),
                          //   ),
                          //   onTap: () {},
                          // ),
                        InkWell(
                          child: CircleAvatar(
                            backgroundImage:AssetImage('assets/fb.png') ,
                          ),
                          onTap: () {},
                        ),

                        SizedBox(
                          width: 19,
                        ),

                        InkWell(
                          child: CircleAvatar(
                            backgroundColor: Theme.of(context).primaryColor,
                            backgroundImage:AssetImage('assets/google_plus.png'),
                          ),
                          onTap: () {},
                        ),


                      ],
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
        onWillPop: () async {
          bool backStatus = onWillPop();
          if (backStatus) {
            exit(0);
          }
          return false;
        },
      ),
    );
  }

  onWillPop() {
    DateTime now = DateTime.now();
    if (currentBackPressTime == null ||
        now.difference(currentBackPressTime) > Duration(seconds: 2)) {
      currentBackPressTime = now;
      Fluttertoast.showToast(
        msg: 'Press Back Once Again to Exit.',
        backgroundColor: Theme.of(context).primaryColor,
        textColor: Theme.of(context).cardColor,
      );
      return false;
    } else {
      return true;
    }
  }
}
