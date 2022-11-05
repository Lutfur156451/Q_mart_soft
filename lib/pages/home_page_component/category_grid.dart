// import 'package:flutter/material.dart';
// import 'package:q_mart/pages/category/fashion.dart';
//
// // My Own Imports
// import 'package:q_mart/pages/category/top_offers.dart';
// import 'package:q_mart/pages/hellop_page.dart';
//
// class CategoryGrid extends StatelessWidget {
//   final categoryList = [
//     {'title': 'Top Offers', 'image': 'assets/category/best.png'},
//     {'title': 'Fashion', 'image': 'assets/category/fashion.png'},
//     {
//       'title': 'Electronics & Accessories',
//       'image': 'assets/category/electronics.png'
//     },
//     {
//       'title': 'Mobiles & Tablets',
//       'image': 'assets/category/mobile_tablet.png'
//     },
//     {
//       'title': 'Home & Furniture',
//       'image': 'assets/category/home_forniture.jpg'
//     },
//     {
//       'title': 'Electronics & Accessories',
//       'image': 'assets/category/electronics.png'
//     },
//     {
//       'title': 'Mobiles & Tablets',
//       'image': 'assets/category/mobile_tablet.png'
//     },
//   ];
//
//
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//
//     InkWell getStructuredGridCell(category) {
//       final item = category;
//       return InkWell(
//           child: Column(
//             children: [
//               Card(
//                 color: Theme.of(context).cardColor,
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(20)),
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(25),
//                   child: Image(
//                     image: AssetImage(item['image']),
//                     fit: BoxFit.fill,
//                   ),
//                 ),
//               ),
//
//             ],
//           ),
//           onTap: () {
//             // categoryList[0].title
//             // categoryList.map(
//             //   (title) => {
//             //     if (title == 'Top Offers')
//             //       {
//             //         Navigator.push(
//             //             context,
//             //             MaterialPageRoute(
//             //                 builder: (context) =>
//             //                     TopOffers(title: '${item['title']}'))),
//             //       }
//             //     else
//             //       {
//             //         Navigator.push(
//             //             context,
//             //             MaterialPageRoute(
//             //                 builder: (context) =>
//             //                     fashion(title: '${item['title']}')))
//             //       }
//             //   },
//             // );
//
//             // if(categoryList.'title'=='Top Offers'){
//             //   Navigator.push(context, MaterialPageRoute(
//             //       builder: (context) => fashion(title: '${item['title']}')));
//             //
//             // }
//
//             // Navigator.push(context, MaterialPageRoute(
//             //     builder: (context) => fashion(title: '${item['Offers']}')));
//
//
//             Navigator.push(context, MaterialPageRoute(
//                 builder: (context) => hello_page() ));
//           });
//     }
//
//     // return Container(
//     //   decoration: BoxDecoration(
//     //     color: Theme.of(context).backgroundColor,
//     //   ),
//     //   padding: EdgeInsets.all(5.0),
//     //   alignment: Alignment.center,
//     //   width: width - 20.0,
//     //   child: GridView.count(
//     //     primary: false,
//     //     shrinkWrap: true,
//     //     padding: const EdgeInsets.all(0),
//     //     crossAxisSpacing: 0,
//     //     mainAxisSpacing: 16,
//     //     crossAxisCount: 5,
//     //     childAspectRatio: ((width) / 500),
//     //     children: List.generate(categoryList.length, (index) {
//     //       return getStructuredGridCell(categoryList[index]);
//     //     }),
//     //   ),
//     // );
//     return Card(
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//       elevation: 0,
//       color: Theme.of(context).backgroundColor,
//       child: Container(
//         width: MediaQuery.of(context).size.width,
//         height: MediaQuery.of(context).size.height / 8,
//         color: Theme.of(context).backgroundColor,
//         child: Padding(
//           padding: const EdgeInsets.only(left: 8.0),
//           child: ListView.builder(
//             scrollDirection: Axis.horizontal,
//             itemCount: categoryList.length,
//             itemBuilder: (context, index) =>
//                 getStructuredGridCell(categoryList[index]),
//           ),
//         ),
//       ),
//     );
//
//
//
//   }
// }


import 'package:flutter/material.dart';

// My Own Imports
import 'package:q_mart/pages/category/top_offers.dart';

class CategoryGrid extends StatelessWidget {
  final categoryList = [
    {'title': 'Top Offers', 'image': 'assets/category/best.png'},

    {'title': 'Fashion', 'image': 'assets/category/fashion.png'},
    {
      'title': 'Electronics & Accessories',
      'image': 'assets/category/electronics.png'
    },
    {
      'title': 'Mobiles & Tablets',
      'image': 'assets/category/mobile_tablet.png'
    },


    {
      'title': 'Home & Furniture',
      'image': 'assets/category/home_forniture.jpg'
    },
    {
      'title': 'Electronics & Accessories',
      'image': 'assets/category/electronics.png'
    },
    {
      'title': 'Mobiles & Tablets',
      'image': 'assets/category/mobile_tablet.png'
    },


  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;


    InkWell getStructuredGridCell(category) {
      final item = category;
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
              fit: BoxFit.fill,
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

    // return Container(
    //   decoration: BoxDecoration(
    //     color: Theme.of(context).backgroundColor,
    //   ),
    //   padding: EdgeInsets.all(5.0),
    //   alignment: Alignment.center,
    //   width: width - 20.0,
    //   child: GridView.count(
    //     primary: false,
    //     shrinkWrap: true,
    //     padding: const EdgeInsets.all(0),
    //     crossAxisSpacing: 0,
    //     mainAxisSpacing: 16,
    //     crossAxisCount: 5,
    //     childAspectRatio: ((width) / 500),
    //     children: List.generate(categoryList.length, (index) {
    //       return getStructuredGridCell(categoryList[index]);
    //     }),
    //   ),
    // );
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
      ),
      elevation: 0,
      color: Theme.of(context).backgroundColor,
      child: Container(

        width: MediaQuery.of(context).size.width, height: MediaQuery.of(context).size.height/8,
        color: Theme.of(context).backgroundColor,

        child: Padding(
          padding: const EdgeInsets.only(left: 8.0,),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categoryList.length,
            itemBuilder: (context, index) => getStructuredGridCell(categoryList[index]) ,
          ),
        ),
      ),
    );
  }
}
