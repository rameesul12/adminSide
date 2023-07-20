import 'package:appadmin/controller/provider/FilimSection/filim_adding.dart';
import 'package:appadmin/controller/provider/apicallsProvider/api_get_function.dart';
import 'package:appadmin/controller/provider/apicallsProvider/commonapicallprovider.dart';
import 'package:appadmin/controller/provider/biometricProvider/biometric_provider.dart';
import 'package:appadmin/controller/provider/debouncer/debouncer.dart';
import 'package:appadmin/core/colors.dart';
import 'package:appadmin/controller/provider/loginpage/loginPageProvider.dart';
import 'package:appadmin/view/splashScreen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'controller/provider/dialogues/showdialogue.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => LoginProvider(),),
        ChangeNotifierProvider(create: (context) => FilimAddingPrvider(),),
        ChangeNotifierProvider(create: (context) => DebouncerProvider(),),
        ChangeNotifierProvider(create: (context) => DialoguesProvider(),),
        ChangeNotifierProvider(create: (context) => ApicallFunction(),),
        ChangeNotifierProvider(create: (context) => ApiGetMoviesProvider(),),
        ChangeNotifierProvider(create:(context) => BioMetricProvider(), )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
         scaffoldBackgroundColor: backgroundColor,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home:const SplashScreen() ,
      ),
    );
  }
}
