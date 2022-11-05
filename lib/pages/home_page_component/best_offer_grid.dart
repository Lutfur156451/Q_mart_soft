import 'package:flutter/material.dart';

// My Own Imports
import 'package:q_mart/pages/category/top_offers.dart';

class BestOfferGrid extends StatelessWidget {
  final bestOffers = [
    {
      'title': 'Mobile under ₹7000',
      'image': 'assets/best_offer/best_offer_1.png'
    },
    {
      'title': 'Best Deals on Laptop',
      'image': 'assets/best_offer/best_offer_2.png'
    },
    {
      'title': 'Most Affordable Mobile',
      'image': 'assets/best_offer/best_offer_3.png'
    },
    {
      'title': 'Best Deals on Laptop',
      'image': 'assets/best_offer/best_offer_2.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    InkWell getStructuredGridCell(bestOffer) {
      final item = bestOffer;
      return InkWell(
        child: Card(
          elevation: 2,

          shadowColor: Colors.black12,
          color: Theme.of(context).cardColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5)
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),

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

    // return Card(
    //   elevation: 0,
    //   color: Theme.of(context).backgroundColor,
    //   child: Container(
    //     color: Theme.of(context).backgroundColor,
    //     padding: EdgeInsets.all(0.0),
    //     alignment: Alignment.center,
    //     width: width - 20.0,
    //     child: GridView.count(
    //       shrinkWrap: true,
    //       primary: false,
    //       crossAxisCount: 4,
    //       children: List.generate(bestOffers.length, (index) {
    //         return getStructuredGridCell(bestOffers[index]);
    //
    //       }),
    //     ),
    //   ),
    // );
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
      elevation: 0,
      color: Theme.of(context).backgroundColor,
      child: Container(
        
        width: MediaQuery.of(context).size.width, height: MediaQuery.of(context).size.height/6,
        color: Theme.of(context).backgroundColor,
        
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: bestOffers.length,
            itemBuilder: (context, index) => getStructuredGridCell(bestOffers[index]) ,
          ),
        ),
      ),
    );
  }
}
