import 'package:flutter/material.dart';
import 'package:lesson0/view/homepage.dart';

class HomePageController {

  HomePage homepage;

  //constructor  
  //pass homepage to controller
  HomePageController(this.homepage);


  void flatButtonPressed(){
    //allows popup alert
    showDialog(
      context: homepage.context,
      builder: (BuildContext context){
        return AlertDialog(
          title: Text('Flat Button'),
          content: Text("Flat Button is pressed"),
          actions: <Widget>[
            Ra
          ],
        );
      },
    );
    print("Flat Button Pressed");
  }

  void iconButtonPressed(){
    print("Icon Button Pressed");
  }

  void raisedButtonPressed(){
    print("Raised Button Pressed");
  }
  

}