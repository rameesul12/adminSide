
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:lottie/lottie.dart';



getError(String error,BuildContext ctx){
  ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(backgroundColor: Colors.black,content: Text(error,style: TextStyle(color: Colors.white),)));
}

class DialoguesProvider extends ChangeNotifier{
 Future<Widget> getLoading()async{

return const Center(
  child: Column(
    children: [
      SpinKitPouringHourGlass(
  color: Colors.white,
  size: 50.0,
),
Text("Loading...",style: TextStyle(color: Colors.white),)
    ],
  ),
);
}

 

 
lottieshowing(BuildContext context){
  showDialog(context:context, builder:(context) {
    return SizedBox(
      height: 30,
      width: 20,
       child:  Lottie.asset("assets/animations/animation_lk15dry5.json")
    ) ;
  },);
    
}
}