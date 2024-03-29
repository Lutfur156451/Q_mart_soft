import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:q_mart/pages/category/top_offers_pages/get_products.dart';

import 'category/top_offers_pages/women_wears.dart';
class furniture extends StatefulWidget {

  final String title;




  furniture({Key key, this.title}) : super(key: key);
  @override
  State<furniture> createState() => _furnitureState();
}


class _furnitureState extends State<furniture> {

  bool progress = true;

  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 1), () {
      setState(() {
        progress = false;
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(widget.title),
        titleSpacing: 0.0,
      ),

      backgroundColor: Theme.of(context).backgroundColor,
      body: (progress)
          ? Center(
        child: Card(
          elevation: 2,

          shadowColor: Colors.black12,
          color: Theme.of(context).cardColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7)
          ),
          child: SpinKitFoldingCube(
            color: Theme.of(context).cardColor,
            size: 34.0,
          ),
        ),
      )
          : FutureBuilder<List<Offers>>(
        future: loadOffers(),
        builder: (context, snapshot) {
          if (snapshot.hasError) print(snapshot.error);

          return snapshot.hasData
              ? ListView(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Card(
                  color: Theme.of(context).cardColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Deals of the Day(8 Results)',
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 10.0),
                  child: OffersGridView(offers: snapshot.data)),
            ],
          )
              : Center(
              child: SpinKitFoldingCube(
                color: Theme.of(context).primaryColor,
                size: 35.0,
              ));
        },
      ),
    );
  }
}

class OffersGridView extends StatefulWidget {
  final List<Offers> offers;

  OffersGridView({Key key, this.offers}) : super(key: key);

  @override
  _OffersGridViewState createState() => _OffersGridViewState();
}

class _OffersGridViewState extends State<OffersGridView> {
  InkWell getStructuredGridCell(Offers offers) {
    return InkWell(
      child: Card(
        elevation: 2,

        shadowColor: Colors.black12,
        color: Theme.of(context).cardColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7)
        ),
        child: Container(
          margin: EdgeInsets.all(5.0),
          padding: EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(2.0),
          ),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  height: double.infinity,
                  margin: EdgeInsets.all(5.0),
                  child: Image(
                    image: AssetImage(offers.offerImage),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(right: 6.0, left: 6.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      offers.offerTitle,
                      style: TextStyle(
                        fontSize: 13.0,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      textAlign: TextAlign.center,
                    ),

                    Text(
                      offers.offerText,
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 15.0),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      onTap: () {
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return GridView.count(
      shrinkWrap: true,
      primary: false,
      crossAxisSpacing: 0,
      mainAxisSpacing: 0,
      crossAxisCount: 2,
      childAspectRatio: ((width) / 490),
      children: List.generate(widget.offers.length, (index) {
        return getStructuredGridCell(widget.offers[index]);
      }),
    );
  }
}


class Offers {
  int offerId;
  String offerImage;
  String offerTitle;
  String offerText;
  String offerSubTitle;

  Offers(this.offerId, this.offerImage, this.offerTitle, this.offerText,
      this.offerSubTitle);
}

Future<List<Offers>> loadOffers() async {
  var jsonString = await rootBundle.loadString('assets/json/furniture.json');
  final jsonResponse = json.decode(jsonString);

  List<Offers> offers = [];

  for (var o in jsonResponse) {
    Offers offer =
    Offers(o["offerid"], o["image"], o["title"], o["offer"], o["subtitle"]);

    offers.add(offer);
  }

  return offers;
}

class PassData {
  final String title;
  final int offerid;

  PassData(this.title, this.offerid);
}

