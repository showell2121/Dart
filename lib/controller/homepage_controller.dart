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
        //alert user with pop up box
        return AlertDialog(
          title: Text('Flat Button'),
          content: Text("Flat Button is pressed"),
          actions: <Widget>[
            FlatButton(
              child: Text('OK', ), //style: TextStyle(color: Colors.white,),
              //on press navigates to homepage.context
              onPressed: (){
              Navigator.pop(homepage.context);
              },
            ), 
          ],
        );
      },
    );
    print("Flat Button Pressed");
  }

  void iconButtonPressed(){
    //allows popup alert
    showDialog(
      context: homepage.context,
      builder: (context){
        //alert user with pop up box
        return AlertDialog(
          title: Text('Icon Button'),
          content: Text("Icon Button is pressed"),
          actions: <Widget>[
            IconButton(
              //homepage for icon uses icon: instead of child:
              icon: Text('OK', ), //style: TextStyle(color: Colors.white,),
              onPressed: (){
              Navigator.pop(homepage.context);
              },
            ), 
          ],
        );
      },
    );
    print("Icon Button Pressed");
  }

  void raisedButtonPressed(){

    //allows popup alert
    showDialog(
      context: homepage.context,
      builder: (BuildContext context){
        //alert user with pop up box
        return AlertDialog(
          title: Text('Raised Button'),
          content: Text("Raised Button is pressed"),
          actions: <Widget>[
            RaisedButton(
              child: Text('OK', ), //style: TextStyle(color: Colors.white,),
              onPressed: (){
              Navigator.pop(homepage.context);
              },
            ), 
          ],
        );
      },
    );    
    print("Raised Button Pressed");
  }
  

}