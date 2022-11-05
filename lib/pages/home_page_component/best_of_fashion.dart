import 'package:flutter/material.dart';

// My Own Imports
import 'package:q_mart/pages/category/top_offers.dart';

class BestOfFashion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // height: 500.0,
      child: Column(
        children: <Widget>[
          TopImageBestFashion(),
          OfferGridBestFashion(),
        ],
      ),
    );
  }
}

class TopImageBestFashion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return Stack(
    //   children: <Widget>[
    //     Image(
    //       image: AssetImage('assets/top_design/best_of_fashion.jpg'),
    //     ),
    //     Positioned(
    //       top: 40.0,
    //       left: 20.0,
    //       child: Container(
    //         alignment: Alignment.center,
    //         padding: EdgeInsets.all(0.0),
    //         width: 320.0,
    //         height: 50.0,
    //         child: Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           children: <Widget>[
    //             Text(
    //               'Best Of Fashion',
    //               style: TextStyle(
    //                 color: Colors.white,
    //                 fontSize: 16.0,
    //               ),
    //             ),
    //             InkWell(
    //               child: Container(
    //                 padding: EdgeInsets.all(3.0),
    //                 decoration: BoxDecoration(
    //                   color: Colors.white,
    //                   borderRadius: BorderRadius.circular(5.0),
    //                   border: Border.all(
    //                     color: Colors.black,
    //                     width: 0.2,
    //                   ),
    //                 ),
    //                 child: Text(
    //                   'View All',
    //                 ),
    //               ),
    //               onTap: () {
    //                 Navigator.push(
    //                   context,
    //                   MaterialPageRoute(
    //                       builder: (context) =>
    //                           TopOffers(title: 'Best of Fashion')),
    //                 );
    //               },
    //             ),
    //           ],
    //         ),
    //       ),
    //     ),
    //   ],
    // );
    return Padding(
      padding: const EdgeInsets.all(8.0),
      // child: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   children: <Widget>[
      //     Text(
      //       'Best Of Fashion',
      //       style: TextStyle(
      //         color:Theme.of(context).backgroundColor,
      //         fontSize: 16.0,
      //       ),
      //     ),
      //     InkWell(
      //       child: Container(
      //         padding: EdgeInsets.all(3.0),
      //         decoration: BoxDecoration(
      //           color: Colors.white,
      //           borderRadius: BorderRadius.circular(6.0),
      //           border: Border.all(
      //             color: Theme.of(context).secondaryHeaderColor,
      //             width: 0.2,
      //           ),
      //         ),
      //         child: Text(
      //           'View All',
      //         ),
      //       ),
      //       onTap: () {
      //         Navigator.push(
      //           context,
      //           MaterialPageRoute(
      //               builder: (context) =>
      //                   TopOffers(title: 'Best of Fashion')),
      //         );
      //       },
      //     ),
      //   ],
      // ),
    );
  }
}

class OfferGridBestFashion extends StatelessWidget {
  final bestFashionList = [
    {
      'image': 'assets/best_of_fashion/fashion_1.jpg',
      'title': 'Panties',
      'offer': 'Best Collection'
    },
    {
      'image': 'assets/best_of_fashion/fashion_2.jpg',
      'title': 'Puma',
      'offer': 'Minimum 55% Off'
    },
    {
      'image': 'assets/best_of_fashion/fashion_3.jpg',
      'title': 'Quttos & X-Well',
      'offer': 'Min. 50% Off'
    },
    {
      'image': 'assets/best_of_fashion/fashion_4.jpg',
      'title': 'Nighties & Nightdresses',
      'offer': 'Starting at ₹399'
    }
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    InkWell getStructuredGridCell(bestFashionDeal) {
      final item = bestFashionDeal;
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
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              borderRadius: BorderRadius.circular(7.0),
            ),
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(6.0),
                  height: MediaQuery.of(context).size.height/8,
                  width: MediaQuery.of(context).size.width/3,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image(
                      image: AssetImage(item['image']),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
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
      children: <Widget>[
        SizedBox(
          width: width,
          height: 479.0,
          child: Stack(
            children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: Container(
            width: MediaQuery.of(context).size.width, height: MediaQuery.of(context).size.height/4,
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: bestFashionList.length,
            itemBuilder: (context, index) => getStructuredGridCell(bestFashionList[index]) ,
        ),
      ),
    ),
          )
            ],
          ),
        ),
      ],
    );
  }
}
