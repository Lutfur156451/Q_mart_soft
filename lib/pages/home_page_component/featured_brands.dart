import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

// My Own Imports
import 'package:q_mart/pages/category/top_offers.dart';

class FeaturedBrandSlider extends StatelessWidget {
  final featuredBrandList = [
    
    {'title': 'Intel', 'image': 'assets/featured_brands/featured_brand_3.jpg'},
    {
      'title': 'Samsung',
      'image': 'assets/featured_brands/featured_brand_1.jpg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    InkWell getStructuredGridCell(featuredBrand) {
      final item = featuredBrand;
      return InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => TopOffers(title: '${item['title']}')),
          );
        },
        child: Image(
          image: AssetImage(item['image']),
        ),
      );
    }

    return Container(
      height: MediaQuery.of(context).size.height/2,
      padding: EdgeInsets.only(bottom: 0.0),
      decoration: BoxDecoration(
        color:Theme.of(context).backgroundColor ,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: <Widget>[
          Container(
            height: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            padding: EdgeInsets.all(12.0),
            alignment: Alignment.topLeft,
            child: Card(
              color: Theme.of(context).primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              child: Center(
                child: Text(
                  'Featured Brands',
                  style: TextStyle(
                    fontSize: 15.0,color: Theme.of(context).cardColor
                  ),
                ),
              ),
            ),
          ),
          CarouselSlider(
            height:MediaQuery.of(context).size.height/4,
            enlargeCenterPage: true,
            items: List.generate(featuredBrandList.length, (index) {
              return getStructuredGridCell(featuredBrandList[index]);
            }),
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayCurve: Curves.fastOutSlowIn,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            viewportFraction: 0.8,
          ),
        ],
      ),
    );
  }
}
