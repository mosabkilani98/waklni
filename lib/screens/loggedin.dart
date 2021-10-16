import 'package:flutter/material.dart';
import 'package:wakelni/screens/login.dart';
class Loggedin extends StatelessWidget {
  const Loggedin({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Loggedin"),actions: [
        InkWell(
          onTap: (){}, child: Text("logout"))
      ],),
    body:Center(
      child: Text("Profile"),
    )
    );
    
  }
}