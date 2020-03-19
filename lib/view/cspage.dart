import 'package:flutter/material.dart';

class CSPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      //Item 1
      appBar: AppBar(
        title: Text('CS Home'),
      ),

      //Item 2
      body: ListView(
        children: <Widget>[
          Text('Cs Home Page'),
        ],
      ),
    );
  }
}
