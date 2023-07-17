

import 'dart:convert';
import 'dart:developer';
import 'package:appadmin/controller/provider/dialogues/showdialogue.dart';
import 'package:appadmin/model/filimposting/filim_posting.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;



class ApicallFunction extends ChangeNotifier{
  bool isLoaded=true;

  apiPostFunction(String baseUrl,Map<String,dynamic>payload,String token,BuildContext context)async{

   try {
      final response = await http.post(Uri.parse(baseUrl),
    headers:{
      'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer $token'
    },
    body: payload,
    encoding: Encoding.getByName('utf-8')
    );
    if (response.statusCode==200) {
      isLoaded=false;
    log('data kitti');
    final jsondecoded=jsonDecode(response.body);
    return jsondecoded;
    }else{
      // ignore: use_build_context_synchronously
      getError("api respond not getting", context);
    }
   } catch (e) {
     log(e.toString());
   }
  }

Future<List<MovieDetails>>apiGetFunction(String baseUrl,BuildContext context)async{

    try {
      final response = await http.get(Uri.parse(baseUrl),
    headers:{
      'Content-Type': 'application/json',
        'Accept': 'application/json',
    },
    );
    log(response.body);
    log("${response.statusCode}");
   // log(response.body.)
    if (response.statusCode==200) {
      List<MovieDetails>results=[];
      isLoaded=false;
    log('data kitti');
    Map<String,dynamic>  jsondecoded=jsonDecode(response.body);
    SearchResponse searchResponse=SearchResponse.fromJson(jsondecoded); 
    results.clear();
    for (var element in searchResponse.datas) {
      results.add(element);
    }
    log(results.toString());
    notifyListeners();
    return results;
    }else{
      // ignore: use_build_context_synchronously
      getError("api respond not getting", context);
      return [];
    }
   } catch (e) {
     log(e.toString());
     return [];
   }
}
}