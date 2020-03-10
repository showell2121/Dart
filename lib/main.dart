//library for material design for dart
import 'package:flutter/material.dart';

//import file/ class
import './view/homepage.dart';

//run app function
void main() => runApp(Lesson1());


//has to be widget in order to display on screen
//stateLess doesnt change screen
//statefull changes screen
class Lesson1 extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lesson1',      
      home: HomePage(),//Text('Seth Demo Home Page'), //scaffold() allows to structure page
    );
  }
} //end of Lesson1 Class
