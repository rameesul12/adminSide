

import 'package:appadmin/view/dashbord/homepage.dart';
import 'package:appadmin/view/loginPage/loginPage.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../controller/provider/apicallsProvider/apigetfunction.dart';
import '../../controller/provider/biometricProvider/biometric_provider.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override

 
  Widget build(BuildContext context) {
    Provider.of<ApiGetMoviesProvider>(context,listen: false).apiGet(context);
 getlogged(context);
 Provider.of<BioMetricProvider>(context,listen: false).biometricVerification(context);
    return  Scaffold(
      body: Center(
        child: SizedBox(
           height: 50,
          // width: 50,
          child: Lottie.asset('assets/animations/animation_lk3hiyoo.json' ,fit: BoxFit.cover,repeat: false)),

      ),
    );
  }

 showingScreen(BuildContext context)async{
 
 await Future.delayed(Duration(seconds: 2));
 

 // ignore: use_build_context_synchronously
 Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage() ,));
}

    Future<void> getlogged(BuildContext context)async{
await Future.delayed(Duration(seconds: 2));
  final SharedPreferences shared_preferences=await SharedPreferences.getInstance();
  bool? value=shared_preferences.getBool('login');

  if (value==true) {
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => AdminHomePage(),));
  }else{
    await showingScreen(context);
  }
    }
}

  