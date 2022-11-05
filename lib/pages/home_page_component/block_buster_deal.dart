 import 'package:flutter/material.dart';

// My Own Imports
import 'package:q_mart/pages/category/top_offers.dart';

class BlockBusterDeals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // height: 500.0,
      child: Column(
        children: <Widget>[
          //TopImage(),
          OfferGrid(),
        ],
      ),
    );
  }
}


class OfferGrid extends StatelessWidget {
  final blockBustorDealList = [
    {
      'image': 'assets/block_bustor_deal/block_bustor_1.jpg',
      'title': 'Sumsung',
      'offer': 'Flat ₹10,000 Off'
    },
    {
      'image': 'assets/block_bustor_deal/block_bustor_2.jpg',
      'title': 'Blockbustor Deals On TVs',
      'offer': 'From ₹5,499'
    },
    {
      'image': 'assets/block_bustor_deal/block_bustor_3.jpg',
      'title': 'Asian, Kraasa & more',
      'offer': 'Min. 55% Off'
    },
    {
      'image': 'assets/block_bustor_deal/block_bustor_4.jpg',
      'title': 'Puma, FILA & more',
      'offer': 'Min. 60% Off'
    },
    {
      'image': 'assets/block_bustor_deal/block_bustor_2.jpg',
      'title': 'Blockbustor Deals On TVs',
      'offer': 'From ₹5,499'
    },
    {
      'image': 'assets/block_bustor_deal/block_bustor_3.jpg',
      'title': 'Asian, Kraasa & more',
      'offer': 'Min. 55% Off'
    },
    {
      'image': 'assets/block_bustor_deal/block_bustor_4.jpg',
      'title': 'Puma, FILA & more',
      'offer': 'Min. 60% Off'
    },
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    InkWell getStructuredGridCell(blockBustorDeal) {
      final item = blockBustorDeal;
      return InkWell(
        child: Container(



          margin: EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            color: Theme.of(context).backgroundColor,
            borderRadius: BorderRadius.circular(7.0),
           
          ),
          child: Card(
            elevation: 2,

            shadowColor: Colors.black12,
            color: Theme.of(context).cardColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7)
            ),
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(6.0),
                  height: MediaQuery.of(context).size.height/8,

                  child: Image(
                    image: AssetImage(item['image']),
                    fit: BoxFit.fill,
                  ),
                ),
                Container(

                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '${item['title']}',
                          style: TextStyle(fontSize: 12.0),
                        ),
                        Text(
                          '${item['offer']}',
                          style: TextStyle(
                              color: const Color(0xFF67A86B), fontSize: 16.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
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
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          width: width,
          height: MediaQuery.of(context).size.height/3,
          child: Stack(

            children: <Widget>[

              Card(
                color: Theme.of(context).backgroundColor,
              elevation: 0,
              child: Container(
              width: MediaQuery.of(context).size.width, height: MediaQuery.of(context).size.height/4,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: ListView.builder(


              scrollDirection: Axis.horizontal,
              itemCount: blockBustorDealList.length,
              itemBuilder: (context, index) => getStructuredGridCell(blockBustorDealList[index]) ,
                ),
              ),
              ),
    ),
            ],
          ),
        ),
      ],
    );
  }
}
