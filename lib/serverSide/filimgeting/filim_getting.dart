

import 'dart:developer';
import 'package:appadmin/model/filimposting/filim_posting.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import '../../controller/provider/apicallsProvider/commonapicallprovider.dart';

searchGetting(BuildContext context,String payload) async{

  List<MovieDetails>responseList=[];
  

final provider= Provider.of<ApicallFunction>(context,listen: false);
//final token =await storageRead(Provider.of<LoginProvider>(context,listen: false).secureStorage);
//log(token);


String baseurl="https://api.themoviedb.org/3/search/movie?api_key=a16115323f4b6863e6772960d6d13c22&query=$payload";


// ignore: use_build_context_synchronously
responseList=await provider.apiGetFunction(baseurl,context);
log(responseList.toString());



return responseList;

}