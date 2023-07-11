

import 'dart:io';
import 'package:appadmin/controller/provider/loginpage/loginPageProvider.dart';
import 'package:appadmin/core/secureStorage/storage_function.dart';
import 'package:appadmin/serverSide/apiConfiguration.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

import '../../../model/filimAdding/filimresp.dart';

class FilimAddingPrvider extends ChangeNotifier{



  Future filimGetting( String filimTitile,BuildContext context) async{
      var storege=await storageRead(Provider.of<LoginProvider>(context,listen: false).secureStorage);
  String payload=filimTitile;

 final movieUrl="${ApiConfiguration.baseUrlFilim}/search/movie?api_key=${ApiConfiguration.apiKey}&query=${payload}" ;


   final  response=await http.get(
    Uri.parse(movieUrl),
    headers:{ 'Content-Type': 'application/json',
      'Accept': 'application/json', 
      'Authorization': 'Bearer $storege',
    },
    
   );
   if (response.body==true) {
     
   }
  }
}