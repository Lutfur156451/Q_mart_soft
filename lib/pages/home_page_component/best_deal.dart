import 'package:flutter/material.dart';

// My Own Imports
import 'package:q_mart/pages/category/top_offers.dart';

class BestDealGrid extends StatelessWidget {
  final bestDealList = [
    {
      'title': 'Latest Winter Collection',
      'image': 'assets/best_deal/best_1.png'

    },
    {
      'title': 'Bedsheets, Curtains & More',
      'image': 'assets/best_deal/best_2.jpg'
    },
    {
      'title': 'Latest Winter Collection',
      'image': 'assets/best_deal/best_1.png'
    },
    {
      'title': 'Bedsheets, Curtains & More',
      'image': 'assets/best_deal/best_2.jpg'
    },
    {
      'title': 'Latest Winter Collection',
      'image': 'assets/best_deal/best_1.png'
    },

    {
      'title': 'Latest Winter Collection',
      'image': 'assets/best_deal/best_1.png'
    },
    {
      'title': 'Bedsheets, Curtains & More',
      'image': 'assets/best_deal/best_2.jpg'
    },
    {
      'title': 'Latest Winter Collection',
      'image': 'assets/best_deal/best_1.png'
    },
   
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    InkWell getStructuredGridCell(bestDeal) {
      final item = bestDeal;
      return InkWell(
        child: Card(
          elevation: 2,

          shadowColor: Colors.black12,
          color: Theme.of(context).cardColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7)
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(7),
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
    return Card(
      color: Theme.of(context).backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      elevation: 0,
      child: Container(
        color:  Theme.of(context).backgroundColor,
        width: MediaQuery.of(context).size.width, height: MediaQuery.of(context).size.height/4,
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: bestDealList.length,
            itemBuilder: (context, index) => getStructuredGridCell(bestDealList[index]) ,
          ),
        ),
      ),
    );
  }
}
