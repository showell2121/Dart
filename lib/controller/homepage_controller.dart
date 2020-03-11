import 'package:lesson0/view/homepage.dart';

class HomePageController {

  HomePage homepage;

  //constructor  
  //pass homepage to controller
  HomePageController(this.homepage);


  void flatButtonPressed(){
    print("Flat Button Pressed");
  }

  void iconButtonPressed(){
    print("Icon Button Pressed");
  }

  void raisedButtonPressed(){
    print("Raised Button Pressed");
  }

}