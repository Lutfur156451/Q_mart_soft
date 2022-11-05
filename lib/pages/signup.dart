import 'package:flutter/material.dart';
import 'package:q_mart/pages/login.dart';
import 'package:q_mart/pages/home.dart';

//My Own Imports
import 'package:q_mart/Animation/fadeIn.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  // Initially password is obscure
  bool _obscureText = true;
  bool _obscureText1 = true;

  // Toggles the password show status
  void _viewPassword() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  void _viewPassword1() {
    setState(() {
      _obscureText1 = !_obscureText1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: ListView(
        children: <Widget>[

          Padding(
            padding: const EdgeInsets.all(28.0),
            child: Container(
              alignment: Alignment.center,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 150,
                    width: 150,
                    child: Image.asset('assets/logo.png'),
                  ),

                  Center(child: Text('SIGN UP',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                  SizedBox(
                    height: 25.0,
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7)
                    ),
                    shadowColor: Colors.black12,
                    color: Theme.of(context).cardColor,
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[

                              TextField(
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.only(top: 12.0, bottom: 12.0, ),

                                  border: InputBorder.none,
                                  alignLabelWithHint: true,
                                  isDense: true,

                                  fillColor: Theme.of(context).cardColor,
                                  //hintStyle: GoogleFonts.inter(fontSize: Dimensions.fontSizeLarge, color: Theme.of(context).hintColor),
                                  filled: true,

                                  hintText: ' Email Address',
                                ),
                              ),

                            Divider(thickness: 0.2,color: Theme.of(context).disabledColor.withOpacity(0.6),),

                              TextField(
                                decoration: InputDecoration(

                                  border: InputBorder.none,
                                  alignLabelWithHint: true,
                                  isDense: true,

                                  fillColor: Theme.of(context).cardColor,
                                  //hintStyle: GoogleFonts.inter(fontSize: Dimensions.fontSizeLarge, color: Theme.of(context).hintColor),
                                  filled: true,
                                  hintText: 'Username',
                                  contentPadding:
                                      const EdgeInsets.only(top: 12.0, bottom: 12.0,left: 4),
                                ),
                              ),

                            Divider(thickness: 0.2,color: Theme.of(context).disabledColor.withOpacity(0.6),),
                              TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  alignLabelWithHint: true,
                                  isDense: true,

                                  fillColor: Theme.of(context).cardColor,
                                  //hintStyle: GoogleFonts.inter(fontSize: Dimensions.fontSizeLarge, color: Theme.of(context).hintColor),
                                  filled: true,
                                  hintText: 'Password',
                                  suffixIcon: IconButton(
                                    icon: Icon(Icons.remove_red_eye),
                                    onPressed: _viewPassword,
                                  ),
                                  contentPadding:
                                      const EdgeInsets.only(top: 12.0, bottom: 12.0,left: 4),
                                ),
                                obscureText: _obscureText,
                              ),



                              Divider(thickness: 0.2,color: Theme.of(context).disabledColor.withOpacity(0.6),),

                              TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  alignLabelWithHint: true,
                                  isDense: true,

                                  fillColor: Theme.of(context).cardColor,
                                  //hintStyle: GoogleFonts.inter(fontSize: Dimensions.fontSizeLarge, color: Theme.of(context).hintColor),
                                  filled: true,
                                  hintText: 'Confirm Password',
                                  suffixIcon: IconButton(
                                    icon: Icon(Icons.remove_red_eye),
                                    onPressed: _viewPassword1,
                                  ),
                                  contentPadding:
                                      const EdgeInsets.only(top: 12.0, bottom: 12.0,left: 4),
                                ),
                                obscureText: _obscureText1,
                              ),

                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),

                    InkWell(
                      child: Card( elevation: 0,shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                      ),
                        child: Container(
                          height: 45.0,
                          child: Material(
                            borderRadius: BorderRadius.circular(20.0),

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
                                      "SIGN UP",
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
                          MaterialPageRoute(builder: (context) => Home()),
                        );
                      },
                    ),

                  SizedBox(
                    height: 15.0,
                  ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Already have an account?',
                          style: TextStyle(
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
                              color:  Theme.of(context).primaryColor,
                              fontSize: 16.0,
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
