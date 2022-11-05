import 'package:flutter/material.dart';
import 'package:q_mart/pages/category/top_offers.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(

          cursorColor: Theme.of(context).cardColor,
          style: TextStyle(color: Theme.of(context).cardColor),
          decoration: InputDecoration(

            fillColor: Theme.of(context).backgroundColor,

            hintText: 'Search for Products',
            hintStyle: TextStyle(
              fontSize: 14.0,
              color: Theme.of(context).cardColor,
            ),

            suffixIcon: Icon(Icons.search, color: Theme.of(context).cardColor,),
            labelStyle: TextStyle(color:  Theme.of(context).cardColor,),
          ),
        ),
        titleSpacing: 0.0,
        backgroundColor: Theme.of(context).primaryColor,

      ),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 10.0),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => TopOffers(title: 'Best Laptops')),
              );
            },
            child: Image.asset('assets/slider/bn-2.jpg'),
          ),
          SizedBox(
            height: 10.0,
          ),
          Card(
            color: Theme.of(context).backgroundColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Card(
                  color: Theme.of(context).primaryColor,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Popular on Q mart',
                      style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).cardColor,
                      ),
                    ),
                  ),
                ),
                Divider(),
                ListTile(
                  leading: Card(
                    elevation: 0,

                    color: Theme.of(context).backgroundColor,

                    // child: Container(
                    //   height: 56.0,
                    //   width: 56.0,
                    //   decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(28.0),
                    //     border: Border.all(width: 0.3, color: Colors.grey),
                    //
                    //   ),
                    // ),
                    child: CircleAvatar(
                      backgroundColor: Theme.of(context).primaryColor,
                        backgroundImage: AssetImage('assets/best_of_fashion/fashion_1.jpg'),




                    )
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  title: Text(
                    'Ladies Panty',
                    style: TextStyle(
                      fontFamily: 'Jost',
                      letterSpacing: 0.7,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor ,
                    ),
                  ),
                  subtitle: Text(
                    'Best Offers',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              TopOffers(title: 'Ladies Panty')),
                    );
                  },
                ),
                // Divider(),
                // ListTile(
                //   leading: Container(
                //     height: 56.0,
                //     width: 56.0,
                //     decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(28.0),
                //       border: Border.all(width: 0.3, color: Colors.grey),
                //       image: DecorationImage(
                //         image: AssetImage(
                //             "assets/best_of_fashion/best_of_fashion_4.jpg"),
                //         fit: BoxFit.cover,
                //       ),
                //     ),
                //   ),
                //   trailing: Icon(Icons.keyboard_arrow_right),
                //   title: Text(
                //     'Ladies Lingerie',
                //     style: TextStyle(
                //       fontFamily: 'Jost',
                //       letterSpacing: 0.7,
                //       fontWeight: FontWeight.bold,
                //       color: Colors.black,
                //     ),
                //   ),
                //   subtitle: Text(
                //     'Best Offers',
                //     style: TextStyle(
                //       color: Colors.grey,
                //     ),
                //   ),
                //   onTap: () {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //           builder: (context) =>
                //               TopOffers(title: 'Ladies Lingerie')),
                //     );
                //   },
                // ),
                // Divider(),
                // ListTile(
                //   leading: Container(
                //     height: 56.0,
                //     width: 56.0,
                //     decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(28.0),
                //       border: Border.all(width: 0.3, color: Colors.grey),
                //       image: DecorationImage(
                //         image: AssetImage(
                //             "assets/womens_collection/womens_collection_4.jpg"),
                //         fit: BoxFit.cover,
                //       ),
                //     ),
                //   ),
                //   trailing: Icon(Icons.keyboard_arrow_right),
                //   title: Text(
                //     'Ladies Inner Wear',
                //     style: TextStyle(
                //       fontFamily: 'Jost',
                //       letterSpacing: 0.7,
                //       fontWeight: FontWeight.bold,
                //       color: Colors.black,
                //     ),
                //   ),
                //   subtitle: Text(
                //     'Best Offers',
                //     style: TextStyle(
                //       color: Colors.grey,
                //     ),
                //   ),
                //   onTap: () {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //           builder: (context) =>
                //               TopOffers(title: 'Ladies Inner Wear')),
                //     );
                //   },
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
