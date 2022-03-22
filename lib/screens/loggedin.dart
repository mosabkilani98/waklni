 import 'package:flutter/material.dart';
class Loggedin extends StatelessWidget {
  const Loggedin({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     
    return Scaffold(
      appBar: AppBar(actions: [
        InkWell(
          onTap: (){ Navigator.of(context).pushNamed('/login');}, 
          child: Text("login"))
      ],),
    body:Column(
      children: [
        Center(child: Text("Please sign in to get acsses to this page")),
        SizedBox(height: 10,),
         
      ],
    )
    );
    
  }
}