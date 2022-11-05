import 'package:flutter/material.dart';
class hello_page extends StatefulWidget {


  @override
  State<hello_page> createState() => _hello_pageState();
}

class _hello_pageState extends State<hello_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        child: Column(
          children: [
            Text('hello')
          ],
        ),

        onTap: (){

        },

      ),
    );
  }
}
