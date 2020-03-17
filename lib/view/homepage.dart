import 'package:flutter/material.dart';
import 'package:lesson0/controller/homepage_controller.dart';

//class
class HomePage extends StatelessWidget {

  //creates controller variable
  HomePageController controller;

  //create context variable so it can be accessed by controller
  BuildContext context;

  //constructor
  HomePage(){

    //pass homepage to controller
    controller = HomePageController(this);
  }


  @override
  Widget build(BuildContext context) {

    //intializes value context to parameter
    this.context = context;
    
    return Scaffold(
        appBar: AppBar(
          title: Text('Lesson1 Home'),
        ),
        //body: Column(
        //creates scrollable window
        body: ListView(
          children: <Widget>[
            //allows you to add multiple things to a rwo
            Row(
              children: <Widget>[
                Text(
                  '1Home page!!',
                  style: TextStyle(fontSize: 11),
                ),
                Text(
                  '2Home page!!',
                  style: TextStyle(fontSize: 11),
                ),

                //gets image from folders
                Expanded(child: Image.asset('assets/images/Gus.jpg')),
                //gets image from internet
                Expanded(
                    child: Image.network(
                        'https://i.picsum.photos/id/1057/6016/4016.jpg')),
              ],
            ),

            //create new row/ next row
            //allows you to add multiple things to a rwo
            Row(
              children: <Widget>[
                //buttons
                FlatButton(
                  child: Text("Flat Button"),
                  onPressed: controller.flatButtonPressed,
                ),

                //Icon button with default icon from flutter
                IconButton(
                  icon: Icon(Icons.ac_unit),
                  onPressed: controller.iconButtonPressed,
                ),
                //Raised
                RaisedButton(
                  child: Text('Raised Button'),
                  onPressed: controller.raisedButtonPressed,
                )
              ],
            ),

            //creates error becuase data exceeds screen.
            //Text('3Home page!!',style: TextStyle(fontSize: 100),),

            //gets image from folders
            Image.asset('assets/images/Gus.jpg'),
            //gets image from internet
            Image.network('https://i.picsum.photos/id/1057/6016/4016.jpg'),
            //Expands data horizontally but does not display all data
            // Expanded(child: Text('1Home page!!',style: TextStyle(fontSize: 100),)),
            // Expanded(child: Text('1Home page!!',style: TextStyle(fontSize: 100),)),
            // Expanded(child: Text('1Home page!!',style: TextStyle(fontSize: 100),)),
            // Expanded(child: Text('1Home page!!',style: TextStyle(fontSize: 100),)),
            // Expanded(child: Text('1Home page!!',style: TextStyle(fontSize: 100),)),
            // Expanded(child: Text('1Home page!!',style: TextStyle(fontSize: 100),)),
          ], //End of Screen
        ));
  }
}
