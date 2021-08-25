import 'package:flutter/material.dart';
import 'package:wakelni/constants/constants.dart';
class MYdrawer extends StatefulWidget {
  const MYdrawer({ Key? key }) : super(key: key);

  @override
  _MYdrawerState createState() => _MYdrawerState();
}

class _MYdrawerState extends State<MYdrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: PrimaryColor,
      width: double.infinity,
      height: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [ 
          Container(height: 70,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(image: AssetImage("assets/person.png"))
          ),
          ),
        Text("loremipsom",style: TextStyle(fontSize: 20,color: Colors.white),),
        Text("loremipsom@gmail.com",style: TextStyle(fontSize: 14,color: Colors.black),)
      ],),
    );
  }
}