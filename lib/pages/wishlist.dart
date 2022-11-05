import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// My Own Imports
import 'package:q_mart/pages/home.dart';

class WishlistPage extends StatefulWidget {
  @override
  _WishlistPageState createState() => _WishlistPageState();
}

class _WishlistPageState extends State<WishlistPage> {
  int wishlistItem = 4;

  final wishlistItemList = [
    {
      'title': 'Orange One Piece for Women',
      'image': 'assets/products/wedding_collection/wedding_collection_11.jpg',
      'price': 649,
      'size': 'L'
    },
    {
      'title': 'White One Piece for Women',
      'image': 'assets/products/wedding_collection/wedding_collection_11.jpg',
      'price': 299,
      'size': 'M'
    },
    {
      'title': 'Julee Crepe Embroidered Salwar Suit Material',
      'image': 'assets/products/wedding_collection/wedding_collection_11.jpg',
      'price': 849,
      'size': 'L'
    },
    {
      'title': 'Saara Poly Silk Embellished, Woven Salwar Suit Material',
      'image': 'assets/products/wedding_collection/wedding_collection_11.jpg',
      'price': 549,
      'size': 'XS'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        centerTitle: true,elevation: 0,
        title: Text('My Wishlist'),
        titleSpacing: 0.0,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: (wishlistItem == 0)
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.heartBroken,
                    color: Colors.grey,
                    size: 60.0,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'No Item in Wishlist',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextButton(
                    child: Text(
                      'Go To Home',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()),
                      );
                    },
                  )
                ],
              ),
            )
          : ListView.builder(
              itemCount: wishlistItemList.length,
              itemBuilder: (context, index) {
                final item = wishlistItemList[index];
                return Slidable(
                  actionPane: SlidableDrawerActionPane(),
                  actionExtentRatio: 0.25,
                  secondaryActions: <Widget>[
                    Container(
                      margin: EdgeInsets.only(
                        top: 5.0,
                        bottom: 5.0,
                      ),
                      child: IconSlideAction(
                        caption: 'Delete',
                        color:Theme.of(context).errorColor,
                        icon: Icons.delete,
                        onTap: () {
                          setState(() {
                            wishlistItemList.removeAt(index);
                            wishlistItem = wishlistItem - 1;
                          });

                          // Then show a snackbar.
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Item Removed')));
                        },
                      ),
                    ),
                  ],
                  child:Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 2,

                      shadowColor: Colors.black12,
                      color: Theme.of(context).cardColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7)
                      ),
                      child: Container(
                        height: 180.0,
                        padding: EdgeInsets.all(5.0),
                        child: Card( shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                        ),
                            color: Theme.of(context).cardColor,
                            elevation: 0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.all(10.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          '${item['title']}',
                                          style: TextStyle(
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.bold,
                                            color: Theme.of(context).primaryColor
                                          ),
                                        ),
                                        SizedBox(
                                          height: 7.0,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                          children: <Widget>[
                                            Text(
                                              'Price:',
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 15.0,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10.0,
                                            ),
                                            Text(
                                              '₹${item['price']}',
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15.0,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 7.0,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                          children: <Widget>[
                                            RichText(
                                              text: TextSpan(
                                                text: 'Size:  ',
                                                style: TextStyle(
                                                    fontSize: 15.0,
                                                    color: Colors.grey),
                                                children: <TextSpan>[
                                                  TextSpan(
                                                      text: '  ${item['size']}',
                                                      style: TextStyle(
                                                          fontSize: 15.0,
                                                          color: Colors.blue)),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10.0,
                                            ),
                                            // InkWell(
                                            //   child: Card(
                                            //     color: Theme.of(context).errorColor,
                                            //     shape: RoundedRectangleBorder(
                                            //       borderRadius: BorderRadius.circular(20)
                                            //     ),
                                            //     child: Container(
                                            //       decoration: BoxDecoration(
                                            //           color: Theme.of(context).backgroundColor,
                                            //         borderRadius: BorderRadius.circular(20)
                                            //       ),
                                            //
                                            //       padding: EdgeInsets.all(3.0),
                                            //       child: Padding(
                                            //         padding: const EdgeInsets.all(2.0),
                                            //         child:Icon(Icons.delete,color: Theme.of(context).errorColor,)
                                            //       ),
                                            //     ),
                                            //   ),
                                            //   onTap: () {
                                            //     setState(() {
                                            //       wishlistItemList.removeAt(index);
                                            //       wishlistItem--;
                                            //     });
                                            //
                                            //     // Then show a snackbar.
                                            //     ScaffoldMessenger.of(context)
                                            //         .showSnackBar(SnackBar(
                                            //       backgroundColor: Theme.of(context).primaryColor ,
                                            //         content:
                                            //         Text("Item Removed")));
                                            //   },
                                            // ),
                                          ],
                                        ),
                                        SizedBox(height: 5,),

                                        InkWell(
                                          child: Card(
                                            color: Theme.of(context).errorColor,
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(5)
                                            ),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: Theme.of(context).errorColor,
                                                  borderRadius: BorderRadius.circular(5)
                                              ),

                                              padding: EdgeInsets.all(3.0),
                                              child: Padding(
                                                  padding: const EdgeInsets.all(2.0),
                                                  child:Text('Delete',style: TextStyle(color: Theme.of(context).cardColor),)
                                              ),
                                            ),
                                          ),
                                          onTap: () {
                                            setState(() {
                                              wishlistItemList.removeAt(index);
                                              wishlistItem--;
                                            });

                                            // Then show a snackbar.
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(SnackBar(
                                                backgroundColor: Theme.of(context).primaryColor ,
                                                content:
                                                Text("Item Removed")));
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      width: 120.0,
                                      height: 160.0,
                                      child: Image(
                                        image: AssetImage(item['image']),
                                        fit: BoxFit.fitHeight,
                                      ),
                                    ),
                                  ],
                                ),

                              ],
                            )),
                      ),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
