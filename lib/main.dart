import 'package:flutter/material.dart';
import 'package:wakelni/screens/home.dart';
import 'package:wakelni/screens/services.dart';
void main(){
  runApp(Main());
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    
      initialRoute: HOME_PAGE.routeName,
      routes: { HOME_PAGE.routeName: (context)=>HOME_PAGE(),
                 
              }
    );
  }
}
