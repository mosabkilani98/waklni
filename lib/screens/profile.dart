import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wakelni/constants/constants.dart';
import 'package:wakelni/provide/google.dart';
import 'package:wakelni/screens/phone.dart';
class Profile extends StatefulWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final user=FirebaseAuth.instance.currentUser!;
    final email = user.email;
    final ph =user.phoneNumber;
    final name =user.displayName;
    final da =user.metadata;
    return Scaffold(
       backgroundColor: PrimaryColor,
      body: ListView(children: [ 
        SizedBox(height: 20,),
        Padding(
          padding: EdgeInsets.all(14.0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Icon(Icons.menu,color: Colors.white,),
              Text("الملف الشخصي",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white),),
              InkWell(
                onTap: (){
                  final provider = Provider.of<GoogleSignInProvider>(context,listen:false );
                  provider.Logout();
                },
                child: Icon(Icons.logout,color: Colors.white,))
            ],),
            
        ),
        SizedBox(height: 15,),
         Column(
           children: [
             CircleAvatar(
              radius:100 ,
              backgroundImage: NetworkImage(user.photoURL!),    
        ),
        SizedBox(height: 15,),
           ],
         ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Directionality(textDirection: TextDirection.rtl,
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("البريد الإلكتروني",style: TextStyle(color: Colors.grey[350]),),
                Text("$email",style: TextStyle(color: Colors.white),),   
              ],)),),
           Divider(color: Colors.white,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Directionality(textDirection: TextDirection.rtl,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("الاسم",style: TextStyle(color: Colors.grey[350]),),
                Text("$name",style: TextStyle(color: Colors.white),)
              ],
            )),
          ),
          Divider(color: Colors.white,),
            Padding(
            padding: const EdgeInsets.all(8.0),
            child: Directionality(textDirection: TextDirection.rtl,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("رقم الموبايل",style: TextStyle(color: Colors.grey[350]),),
                Text("$ph",style: TextStyle(color: Colors.white),)
              ],
            )),
          ),Divider(color: Colors.white,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Directionality(textDirection: TextDirection.rtl,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("التاريخ",style: TextStyle(color: Colors.grey[350]),),
                Text("$da",style: TextStyle(color: Colors.white),)
              ],
            )),
          ),Divider(color: Colors.white,),
    ],),
    );
  }
}