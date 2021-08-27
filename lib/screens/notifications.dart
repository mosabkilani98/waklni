import 'package:flutter/material.dart';
import 'package:wakelni/constants/constants.dart';
class Notificatios extends StatelessWidget {
  const Notificatios({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PrimaryColor,
      body: ListView(
        children: [
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.all(14.0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Icon(Icons.menu,color: Colors.white,),
              Text("الإشعارات",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white),),
              Icon(Icons.notifications_none_outlined,color: Colors.white,)
            ],),
            
        ),
        SizedBox(height: 15,),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
            Column(children:
            [
              Text("هو ببساطة نص شكلي يستخدم في دور النشر",
                             style:TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),),
              Text("ديسمبر2015الساعة12:02ص 2",
                style: TextStyle(fontSize: 12,color: Colors.white),)
                             ],
            ),
            Column(children: [Image.asset("assets/person.png")],),
          ],),
        ),
        Divider(color: Colors.white,),
        
        ],
      ),
    );
  }
}