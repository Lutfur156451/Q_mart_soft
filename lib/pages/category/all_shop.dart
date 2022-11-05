import 'package:flutter/material.dart';

import '../../functions/app_constants.dart';
class shop_all extends StatefulWidget {


  @override
  State<shop_all> createState() => _shop_allState();
}

class _shop_allState extends State<shop_all> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(AppConstants.ALL_STORE),
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body:  Padding(
        padding: const EdgeInsets.all(18.0),
        child: GridView.builder(
          scrollDirection: Axis.vertical,

          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 2.0,
          ),
          itemCount: 40,
          itemBuilder: (context, index) {
            return Card(
              elevation: 2,
              shadowColor: Colors.black12,
              color: Theme.of(context).cardColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    CircleAvatar(
                        radius: 25,
                        backgroundColor: Theme.of(context).backgroundColor,

                        child: Image.asset('assets/shop/shop-2.png')),
                    SizedBox(height: 15,),
                    Text(AppConstants.Shop_1)
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
