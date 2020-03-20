import 'package:flutter/material.dart';

class CSPage extends StatelessWidget {
  //declare variable
  var data;
  String description = "This is default value" + "Another added value";

  //Constructor
  CSPage(info) {
    //intializes data
    this.data = info;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Item 1
      appBar: AppBar(
        title: Text('CS Home'),
      ),

      //Item 2 ///////////////////////grad image, star text info info
      body: ListView(
        children: <Widget>[
          //ListView 1
          //gets values from Homepage Controller in csButton
          Text(
            'Enrollment: Undergrads = ${data["undergrad"]}, Grads = ${data["graduate"]}',
            style: TextStyle(
              fontSize: 18,
            ),
          ),

          //ListView 2
          Image.asset(
            "assets/images/Gus.jpg",
            height: 300,
          ),

          //listView 3
          Row(
            children: <Widget>[
              //Row 1
              //changed child to wrap in container
              Container(
                //allow padding with container only
                padding: EdgeInsets.only(right: 20),
                child: Column(
                  children: <Widget>[
                    Text("Department of Computer Science"),
                    Text(
                      "Edmond Oklahoma",
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ),

              //Row 2
              //changed Icon to wrap in container
              Container(
                  padding: EdgeInsets.only(
                    left: 20,
                  ),
                  /////////////////////////////////////Icons on page
                  child: Icon(
                    Icons.star,
                  )),
              //changed Text to wrap in container
              Container(child: Text("3100")),
            ],
          ),

          //ListView 4
          Row(
            //add alignment
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.directions),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.call),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.web),
                onPressed: () {},
              ),
            ],
          ),

          //Listview 5
          Card(
            //add showdow to lift
            elevation: 10,
            color: Colors.lightGreen,
            child: Text(description),
          ),

          //ListView 6
          Text(description),


        ],
      ),
    );
  }
}
