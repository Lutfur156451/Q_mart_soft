import 'package:flutter/material.dart';

// My Own Imports
import 'package:q_mart/Animation/slide_left_rout.dart';
import 'package:q_mart/pages/category/filter.dart';

class FilterRow extends StatefulWidget {
  @override
  _FilterRowState createState() => _FilterRowState();
}

class _FilterRowState extends State<FilterRow> {
  int selectedRadioSort;
  bool satVal = false;
  bool sunVal = false;

  @override
  void initState() {
    super.initState();
    selectedRadioSort = 0;
  }

  setSelectedRadioSort(int val) {
    setState(() {
      selectedRadioSort = val;
      Navigator.pop(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 2,

        shadowColor: Colors.black12,
        color: Theme.of(context).cardColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            InkWell(
              onTap: () {
                _sortModalBottomSheet(context);
              },
              child: Card(
                elevation: 0,
                color: Theme.of(context).cardColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.sort,
                        size: 25.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          'Sort',
                          style: TextStyle(fontSize: 18.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 21.0,
              width: 2.0,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, SlideLeftRoute(page: Filter()));
              },
              child: Container(
                color: Theme.of(context).cardColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.filter_list,
                      size: 25.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        'Filter',
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _sortModalBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Padding(
            padding: const EdgeInsets.all(28.0),
            child: Container(
              decoration: BoxDecoration( color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.only(topRight: Radius.circular(40),topLeft: Radius.circular(40))
              ),

              child: new Wrap(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration( color: Theme.of(context).cardColor,
                        borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))
                    ),

                    child: Container(
                      decoration: BoxDecoration( color: Theme.of(context).cardColor,
                          borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))
                      ),


                      margin: EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Text(
                            'SORT BY',
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),

                          RadioListTile(
                            value: 1,
                            groupValue: selectedRadioSort,
                            title: Text("Popularity"),
                            onChanged: (val) {
                              setSelectedRadioSort(val);
                            },
                            activeColor: Theme.of(context).primaryColor,
                          ),
                          RadioListTile(
                            value: 2,
                            groupValue: selectedRadioSort,
                            title: Text("Price -- Low to High"),
                            onChanged: (val) {
                              setSelectedRadioSort(val);
                            },
                            activeColor: Theme.of(context).primaryColor,
                          ),
                          RadioListTile(
                            value: 3,
                            groupValue: selectedRadioSort,
                            title: Text("Price -- High to Low"),
                            onChanged: (val) {
                              setSelectedRadioSort(val);
                            },
                            activeColor: Theme.of(context).primaryColor,
                          ),
                          RadioListTile(
                            value: 4,
                            groupValue: selectedRadioSort,
                            title: Text("Newest First"),
                            onChanged: (val) {
                              setSelectedRadioSort(val);
                            },
                            activeColor: Theme.of(context).primaryColor,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
