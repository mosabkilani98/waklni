import 'package:flutter/material.dart';
import 'package:wakelni/screens/home.dart';
import 'package:wakelni/screens/login.dart';
import 'package:wakelni/screens/services.dart';
void main(){
  runApp(Main());
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HOME_PAGE(),
      routes: {
        '/services': (context)=>Services(),
        '/login' : (context)=>LoginScreen(),
                
              }
    );
  }
}
