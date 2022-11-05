
import 'package:flutter/material.dart';
import 'package:q_mart/pages/cart.dart';
import 'package:q_mart/pages/home.dart';
import 'package:q_mart/pages/home_page_component/category_grid.dart';
import 'package:q_mart/pages/home_page_component/drawer.dart';
import 'package:q_mart/pages/home_page_component/top_seller_grid.dart';
import 'package:q_mart/pages/my_orders.dart';


class bottom_navbar extends StatefulWidget {

  @override
  State<bottom_navbar> createState() => _bottom_navbarState();
}

class _bottom_navbarState extends State<bottom_navbar> {
  int _crounteIndex=0;

  final page =[
    Home(),
    CartPage(),
    MyOrders(),
    MainDrawer(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Theme.of(context).backgroundColor,
      bottomNavigationBar: ClipRRect(


        borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0), ),
        child: BottomNavigationBar(
          elevation: 3,

         selectedIconTheme: IconThemeData(size: 22),
          selectedFontSize: 14,
          unselectedFontSize: 12,
          unselectedIconTheme: IconThemeData(size: 25),


          backgroundColor:  Theme.of(context).backgroundColor,


          selectedItemColor: Theme.of(context).primaryColor,
          unselectedItemColor: Theme.of(context).secondaryHeaderColor,



          onTap: (int value){
            setState(() {
              _crounteIndex=value;
            });

          },
          currentIndex: _crounteIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled,),label: 'Home',activeIcon: Icon(Icons.home_filled,color: Theme.of(context).primaryColor,)  ),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: 'Cart',activeIcon: Icon(Icons.shopping_cart,color: Theme.of(context).primaryColor,)),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_bag),label: 'Oder',activeIcon: Icon(Icons.shopping_bag,color: Theme.of(context).primaryColor,)),
            BottomNavigationBarItem(icon: Icon(Icons.menu),label: 'Menu',activeIcon: Icon(Icons.menu,color: Theme.of(context).primaryColor,)),

          ],
        ),
      ),
      body: page[_crounteIndex],


    );


  }
}

