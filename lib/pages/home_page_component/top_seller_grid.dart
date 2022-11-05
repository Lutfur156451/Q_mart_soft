import 'package:flutter/material.dart';

// My Own Imports
import 'package:q_mart/pages/category/top_offers.dart';

class TopSeller extends StatelessWidget {
  final topSellerList = [
    {'title': 'Top Selling TVs', 'image': 'assets/top_seller/top_seller_2.png'},
    {'title': 'Top Selling TVs', 'image': 'assets/top_seller/top_seller_2.png'},
    {
      'title': 'Top Selling Mobile Phones',
      'image': 'assets/top_seller/top_seller_1.png'
    },
    {'title': 'Top Selling TVs', 'image': 'assets/top_seller/top_seller_2.png'},
    {'title': 'Top Selling TVs', 'image': 'assets/top_seller/top_seller_2.png'},
    {'title': 'Top Selling TVs', 'image': 'assets/top_seller/top_seller_2.png'},
    {
      'title': 'Top Selling Mobile Phones',
      'image': 'assets/top_seller/top_seller_1.png'
    },
    {'title': 'Top Selling TVs', 'image': 'assets/top_seller/top_seller_2.png'},
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    InkWell getStructuredGridCell(topSeller) {
      final item = topSeller;
      return InkWell(
        child: Card(
          elevation: 2,
          shadowColor: Colors.black12,
          color: Theme.of(context).cardColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7)
          ),
          child: ClipRRect(

            borderRadius: BorderRadius.circular(7 ),
            child: Image(
              image: AssetImage(item['image']),
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => TopOffers(title: '${item['title']}')),
          );
        },
      );
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Card(
          elevation: 2,

          shadowColor: Colors.black12,
          color: Theme.of(context).cardColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7)
          ),
          child: Container(
            color: Theme.of(context).backgroundColor,

            width: MediaQuery.of(context).size.width, height: MediaQuery.of(context).size.height/5,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: topSellerList.length,
                itemBuilder: (context, index) => getStructuredGridCell(topSellerList[index]) ,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
