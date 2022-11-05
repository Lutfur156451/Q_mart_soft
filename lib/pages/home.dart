import 'dart:io';

import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:badges/badges.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:q_mart/functions/app_constants.dart';
import 'package:q_mart/functions/images.dart';
import 'package:q_mart/pages/category/electronic.dart';
import 'package:q_mart/pages/category/mobile.dart';

// My Own Import
import 'package:q_mart/pages/home_page_component/drawer.dart';
import 'package:q_mart/pages/home_page_component/category_grid.dart';
import 'package:q_mart/pages/home_page_component/best_offer_grid.dart';
import 'package:q_mart/pages/home_page_component/top_seller_grid.dart';
import 'package:q_mart/pages/home_page_component/best_deal.dart';
import 'package:q_mart/pages/home_page_component/featured_brands.dart';
import 'package:q_mart/pages/home_page_component/block_buster_deal.dart';
import 'package:q_mart/pages/home_page_component/best_of_fashion.dart';
import 'package:q_mart/pages/home_page_component/womens_collection.dart';
import 'package:q_mart/pages/notifications.dart';
import 'package:q_mart/pages/category/top_offers.dart';
import 'package:q_mart/Animation/slide_left_rout.dart';
import 'package:q_mart/pages/cart.dart';
import 'package:q_mart/pages/search.dart';

import 'brand.dart';
import 'category/all_shop.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  DateTime currentBackPressTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        toolbarHeight: 70,

        centerTitle: true,
        // title: Text(
        //   'Q mart',
        //   style: TextStyle(
        //     fontFamily: 'Montserrat', //Montserrat-BoldItalic.ttf //Poppins
        //   ),
        // ),
        // title: TextField(
        //   autofocus: true,
        //   showCursor: true,
        //   decoration: InputDecoration(
        //     fillColor: Theme.of(context).cardColor,
        //     border: OutlineInputBorder(
        //       borderSide: BorderSide.none,
        //       borderRadius: const BorderRadius.all(
        //         const Radius.circular(50.0),
        //       ),
        //     ),
        //     focusColor: Theme.of(context).primaryColor,
        //     filled: false,
        //     prefixIcon: Icon(Icons.search),
        //     hintText: 'Srearch',
        //   ),
        // ),
        title: TextField(
          onTap: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => SearchPage())),
          autofocus: false,
          showCursor: true,
          decoration: InputDecoration(
            fillColor: Theme.of(context).cardColor,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: const BorderRadius.all(
                const Radius.circular(50.0),
              ),
            ),
            focusColor: Theme.of(context).primaryColor,
            filled: false,
            prefixIcon: Icon(Icons.search),
            hintText: 'Srearch',
          ),
        ),
        titleSpacing: 50.0,
        backgroundColor: Theme.of(context).backgroundColor,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Image.asset('assets/logo.png'),
        ),

        actions: <Widget>[
          // IconButton(
          //   icon: Icon(Icons.search),
          //   color: Theme.of(context).cardColor,
          //   onPressed: () {
          //     Navigator.push(context,
          //         MaterialPageRoute(builder: (context) => SearchPage()));
          //   },
          // ),
          IconButton(
            icon: Badge(
              badgeContent: Text('3'),
              badgeColor: Theme.of(context).canvasColor,
              child: Icon(
                Icons.shopping_cart,
                color: Theme.of(context).primaryColor,
              ),
            ),
            onPressed: () {
              Navigator.push(context, SlideLeftRoute(page: CartPage()));
            },
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
              icon: Badge(
                badgeContent: Text(
                  '2',
                  style:
                      TextStyle(color: Theme.of(context).secondaryHeaderColor),
                ),
                badgeColor: Theme.of(context).canvasColor,
                child: Icon(
                  Icons.notifications,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Notifications()),
                );
              },
            ),
          ),
        ],
      ),
      //
      // // Drawer Code Start Here

      // drawer: MainDrawer(),

      // // Drawer Code End Here
      body: WillPopScope(
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            SizedBox(
              height: 6,
            ),

            // Slider Code Start Here
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            electronic(title: 'Electronics & Appliances')),
                  );
                },
                child: Card(
                  elevation: 2,
                  shadowColor: Colors.black12,
                  color: Theme.of(context).cardColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7)),
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(7)),
                    child: SizedBox(
                      height: 168.0,
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Carousel(
                          radius: Radius.circular(7),
                          showIndicator: true,
                          images: [
                            AssetImage('assets/slider/bn-1.png'),
                            AssetImage('assets/slider/bn-2.png'),
                            AssetImage('assets/slider/bn-3.jpg'),
                            AssetImage('assets/slider/bn-1.png'),
                            AssetImage('assets/slider/bn-2.png'),
                            AssetImage('assets/slider/bn-3.jpg'),
                          ],
                          dotSize: 6.0,
                          indicatorBgPadding: 5.0,
                          dotSpacing: 15.0,
                          dotColor: Theme.of(context).primaryColor,
                          boxFit: BoxFit.fill,
                          dotVerticalPadding: 0.1,
                          dotPosition: DotPosition.bottomCenter,
                          animationCurve: Curves.linearToEaseOut,
                          dotBgColor: Colors.purple.withOpacity(0.0),
                          noRadiusForIndicator: true,
                          autoplay: true,
                          borderRadius: true,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // Slider Code End Here

            SizedBox(
              height: 12.0,
            ),

            // Category Grid Start Here

            Padding(
              padding: const EdgeInsets.only(left: 13.5, right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppConstants.OUR_CATEGORIES_NAME,
                    style: TextStyle(fontWeight: FontWeight.w900),
                  ),
                  InkWell(
                    child: Text(
                      AppConstants.VIEW_ALL,
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    ),
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              electronic(title: 'Electronics & Appliances'),
                        )),
                  ),
                ],
              ),
            ),
            CategoryGrid(),

            // Category Grid End Here

            SizedBox(
              height: 6.0,
            ),
            // Best Offer Grid Start Here
            SizedBox(
              height: 12.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 13.5, right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppConstants.TRENDING_SALES,
                    style: TextStyle(fontWeight: FontWeight.w900),
                  ),
                  InkWell(
                    child: Text(
                      AppConstants.VIEW_ALL,
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    ),
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              electronic(title: 'Electronics & Appliances'),
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 6.0,
            ),

            BestOfferGrid(),

            // Best Offer Grid End Here
            SizedBox(
              height: 12.0,
            ),
            // Promotion 1 Start Here
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          TopOffers(title: 'Top Selling Android Mobile')),
                );
              },
              child: Card(
                elevation: 0,
                color: Theme.of(context).backgroundColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Image(
                  image: AssetImage('assets/banner/pro-1.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // // Promotion 1 End Here

            SizedBox(
              height: 4.2,
            ),

            // Top Seller Grid Start Here
            SizedBox(
              height: 12.0,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 13.5, right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppConstants.BEST_SALES,
                    style: TextStyle(fontWeight: FontWeight.w900),
                  ),
                  InkWell(
                    child: Text(
                      AppConstants.VIEW_ALL,
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    ),
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              electronic(title: 'Electronics & Appliances'),
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            TopSeller(),
            // Top Seller Grid End Here

            SizedBox(
              height: 3.8,
            ),
            // brand(),
            SizedBox(
              height: 4.0,
            ),

            // Best Deal Grid Start Here
            BestDealGrid(),
            // Best Deal Grid End Here

            SizedBox(
              height: 3.8,
            ),

            SizedBox(
              height: 8.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 13.5, right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppConstants.POPULAR_SHOP,
                    style: TextStyle(fontWeight: FontWeight.w900),
                  ),
                  InkWell(
                    child: Text(
                      AppConstants.VIEW_ALL,
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    ),
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              shop_all(),
                        )),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 2.0,
                ),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 2,
                    shadowColor: Colors.black12,
                    color: Theme.of(context).cardColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: Theme.of(context).backgroundColor,

                              child: Image.asset('assets/shop/shop-1.png')),
                          SizedBox(height: 15,),
                          Text(AppConstants.Shop_2)
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            GridView.builder(

              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 2.0,
              ),
              itemCount: 3,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 2,
                  shadowColor: Colors.black12,
                  color: Theme.of(context).cardColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                            radius: 25,
                            backgroundColor: Theme.of(context).backgroundColor,

                            child: Image.asset('assets/shop/shop-2.png')),
                        SizedBox(height: 15,),
                        Text(AppConstants.Shop_1)
                      ],
                    ),
                  ),
                );
              },
            ),



            // Brand Slider Start Here
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            electronic(title: 'Electronics & Appliances')),
                  );
                },
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(8)),
                  child: SizedBox(
                    height: 168.0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Carousel(
                        radius: Radius.circular(7),
                        showIndicator: false,
                        images: [
                          AssetImage('assets/slider/banner_in_2.png'),
                          AssetImage('assets/slider/banner_in_3.png'),
                          AssetImage('assets/slider/banner_in_4.png'),
                          AssetImage('assets/slider/banner_in_2.png'),
                          AssetImage('assets/slider/banner_in_3.png'),
                          AssetImage('assets/slider/banner_in_4.png'),
                        ],
                        animationCurve: Curves.easeInQuad,
                        dotBgColor: Colors.purple.withOpacity(0.0),
                        noRadiusForIndicator: true,
                        autoplay: true,
                        borderRadius: true,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            //  Brand Slider End Here

            // Our Brand Start Here
            SizedBox(
              height: 12.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 13.5, right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppConstants.OUR_BRANDS,
                    style: TextStyle(fontWeight: FontWeight.w900),
                  ),
                  InkWell(
                    child: Text(
                      AppConstants.VIEW_ALL,
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    ),
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              electronic(title: 'Electronics & Appliances'),
                        )),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 2.0,
                ),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Image.asset('assets/slider/microsoft.png'),
                      Image.asset('assets/slider/onepluse.png'),
                    ],
                  );
                },
              ),
            ),
            // Our Brand End Here

            SizedBox(
              height: 12.0,
            ),

            // Block Buster Deals Start Here
            Padding(
              padding: const EdgeInsets.only(left: 13.5, right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppConstants.LIMITED_HOURS,
                    style: TextStyle(fontWeight: FontWeight.w900),
                  ),
                  InkWell(
                    child: Text(
                      AppConstants.VIEW_ALL,
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    ),
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              electronic(title: 'Electronics & Appliances'),
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 6.0,
            ),
            BlockBusterDeals(),
            // Block Buster Deals End Here

            // Womens Collection Start Here
            Padding(
              padding: const EdgeInsets.only(left: 13.5, right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppConstants.WOMAN_CLLECTION,
                    style: TextStyle(fontWeight: FontWeight.w900),
                  ),
                  InkWell(
                    child: Text(
                      AppConstants.VIEW_ALL,
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    ),
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              electronic(title: 'Electronics & Appliances'),
                        )),
                  ),
                ],
              ),
            ),
            WomensCollection(),
            // Womens Collection End Here

            SizedBox(
              height: 6.0,
            ),
            //Best of Fashion Start Here
            Padding(
              padding: const EdgeInsets.only(left: 13.5, right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppConstants.BEST_OF_FASHION,
                    style: TextStyle(fontWeight: FontWeight.w900),
                  ),
                  InkWell(
                    child: Text(
                      AppConstants.VIEW_ALL,
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    ),
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              electronic(title: 'Electronics & Appliances'),
                        )),
                  ),
                ],
              ),
            ),
            BestOfFashion(),
            //Best of Fashion End Here
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
        now.difference(currentBackPressTime) > Duration(seconds: 3)) {
      currentBackPressTime = now;
      Fluttertoast.showToast(
        msg: 'Press Back Once Again to Exit.',
        backgroundColor: Colors.black,
        textColor: Colors.white,
      );
      return false;
    } else {
      return true;
    }
  }
}
