import 'package:lesson2_statefulwidget/view/homepage.dart';

class HomePageController {

  HomePageState state;

  // //constructor
  // HomePageController(value){
  //   this.state = value;
  // }



  //short hand notation of above code
    //constructor
  HomePageController(this.state);


  //Increase Count
  void upButton() {    
    // print("count: " + state.count.toString());
    
    //calls the state chnage method, param has to be function
    //passes annoymous function and the function increments count
    state.stateChanged((){
      //incremnet
      ++state.count;
    });
  }


  //Decrease Count
  void downButton() {    
    // print("count: " + state.count.toString());

    //calls the state chnage method, param has to be function
    //passes annoymous function and the function decrements count
    state.stateChanged((){
      //decrement
      --state.count;
    });
  }
}