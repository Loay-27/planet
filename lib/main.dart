import 'package:flutter/material.dart';
import 'package:untitled1/screen/home.dart';
import 'package:untitled1/screen/login.dart';
import 'package:untitled1/screen/planet_details.dart';

import 'package:untitled1/screen/test.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    // home: UserListScreen(),
     initialRoute: LoginScreen.routeName,
      routes: {
        LoginScreen.routeName:(context) => const LoginScreen(),
        HomeScreen.routeName:(context) => const HomeScreen(),
        PlanetScreen.routeName:(context) => const PlanetScreen(),
      },
    );
  }
}


