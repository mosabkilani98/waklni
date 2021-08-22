import 'package:flutter/material.dart';
import 'package:wakelni/screens/home.dart';
void main(){
  runApp(Main());
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
