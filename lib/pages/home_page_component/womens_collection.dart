import 'package:flutter/material.dart';

// My Own Imports
import 'package:q_mart/pages/category/top_offers.dart';

class WomensCollection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // height: 500.0,
      child: Column(
        children: <Widget>[
          TopImageWomensFashion(),
          OfferGridWomensFashion(),
        ],
      ),
    );
  }
}

class TopImageWomensFashion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Column(
     mainAxisAlignment: MainAxisAlignment.center,
     children: [

       // Padding(
       //   padding: const EdgeInsets.all(8.0),
       //   child: Row(
       //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
       //     children: <Widget>[
       //       Text(
       //         'Women\'s Collection',
       //         style: TextStyle(
       //           color: Theme.of(context).secondaryHeaderColor,
       //           fontSize: 16.0,fontWeight: FontWeight.bold
       //         ),
       //       ),
       //       InkWell(
       //         child: Text(
       //           'View All',
       //         ),
       //         onTap: () {
       //           Navigator.push(
       //             context,
       //             MaterialPageRoute(
       //                 builder: (context) =>
       //                     TopOffers(title: 'Women\'s Collection')),
       //           );
       //         },
       //       ),
       //     ],
       //   ),
       // ),
     ],
   );
  }
}

class OfferGridWomensFashion extends StatelessWidget {
  final womenCollectionList = [
    {
      'image': 'assets/womens_collection/womens_collection_1.jpg',
      'title': 'Party Wear Kurtas',
      'offer': 'From ₹299'
    },
    {
      'image': 'assets/womens_collection/womens_collection_2.jpg',
      'title': 'Lingerie Set',
      'offer': 'Under ₹299'
    },
    {
      'image': 'assets/womens_collection/womens_collection_3.jpg',
      'title': 'Net Sarees',
      'offer': 'Min 60% Off'
    },
    {
      'image': 'assets/womens_collection/womens_collection_4.jpg',
      'title': 'Lingerie, Sleep & Swimwear',
      'offer': 'Under ₹399'
    }
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    InkWell getStructuredGridCell(womensCollectionDeal) {
      final item = womensCollectionDeal;
      return InkWell(
        child: Container(
height: 500,

          margin: EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            color: Theme.of(context).backgroundColor,
            borderRadius: BorderRadius.circular(11.0),

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
                  height: MediaQuery.of(context).size.height/7,
                  child: ClipRRect(     borderRadius: BorderRadius.circular(7),
                    child: Image(
                      image: AssetImage(item['image']),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: <Widget>[
                      Text(
                        '${item['title']}',
                        style: TextStyle(fontSize: 12.0),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        '${item['offer']}',
                        style: TextStyle(
                            color: const Color(0xFF67A86B), fontSize: 16.0),
                      ),
                    ],
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
          height: 481.0,
          child: Stack(
            children: <Widget>[

              Card( color: Theme.of(context).backgroundColor,
                elevation: 0,
                child: Container(

                  decoration: BoxDecoration(
                    color: Theme.of(context).backgroundColor,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  padding: EdgeInsets.only(top: 5.0, right: 5.0, left: 5.0),
                  width: width - 20.0,
                  margin: EdgeInsets.only(right: 10.0, left: 10.0, top: 10.0),
                  child: GridView.count(
                    primary: false,
                    crossAxisSpacing: 0,
                    mainAxisSpacing: 0,
                    crossAxisCount: 2,
                    childAspectRatio: ((width) / 500),
                    children: List.generate(womenCollectionList.length, (index) {
                      return getStructuredGridCell(womenCollectionList[index]);
                    }),



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
