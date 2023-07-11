import 'package:appadmin/core/colors.dart';
import 'package:appadmin/controller/provider/loginpage/loginPageProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'view/loginPage/loginPage.dart';

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
        ChangeNotifierProvider(create: (context) => LoginProvider(),)
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
         scaffoldBackgroundColor: backgroundColor,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home:LoginPage() ,
      ),
    );
  }
}
