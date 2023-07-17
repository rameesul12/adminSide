import 'dart:io';

import 'package:appadmin/controller/provider/dialogues/showdialogue.dart';
import 'package:appadmin/view/dashbord/homepage.dart';
import 'package:appadmin/view/loginPage/loginPage.dart';
import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BioMetricProvider extends ChangeNotifier {
  final LocalAuthentication auth = LocalAuthentication();

  Future biometricVerification(BuildContext context) async {

await Future.delayed(const Duration(seconds: 3));

    final SharedPreferences shared_preferences =
        await SharedPreferences.getInstance();
    bool? status = shared_preferences.getBool('login');
if (status==null) {
await  shared_preferences.setBool('login',false );
 
}
    if (status==false) {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginPage(),));
    }else if( status==true){

    
    try {
      final List<BiometricType> availableBiometricList =
          await auth.getAvailableBiometrics();
          

      if (availableBiometricList.isNotEmpty) {
        final bool authontcated = await auth.authenticate(
            localizedReason: 'authenticate To login',
            options: const AuthenticationOptions(
                stickyAuth: true,
                sensitiveTransaction: true,
                biometricOnly: false));
       if (authontcated) {
         // ignore: use_build_context_synchronously
         Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => AdminHomePage(),));
       }else{
        exit(0);
       }
      }
    } catch (e) {
      // ignore: use_build_context_synchronously
      getError(e.toString(), context);
      return false;
    }
    }
  }
}
