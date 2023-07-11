
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';



 Future<Widget> getLoading()async{

return Center(
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

 getError(String error,BuildContext context){
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(backgroundColor: Colors.black,content: Text(error,style: TextStyle(color: Colors.white),)));
}