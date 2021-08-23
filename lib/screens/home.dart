import 'package:carousel_pro_nullsafety/carousel_pro_nullsafety.dart';
import 'package:flutter/material.dart';
import 'package:wakelni/screens/homep.dart';
import 'package:wakelni/screens/phone.dart';
import 'package:wakelni/widgets/bottombar/fancy_bottom_navigation.dart';
import '../constants/constants.dart';
class HOME_PAGE extends StatefulWidget {
static String routeName="\home_page";
const HOME_PAGE({ Key? key }) : super(key: key);

  @override
  _HOME_PAGEState createState() => _HOME_PAGEState();
  
}

class _HOME_PAGEState extends State<HOME_PAGE> {
  int selectedItem=0;
  @override
     
  Widget build(BuildContext context) {
  
    return Scaffold(
              
      backgroundColor: PrimaryColor,
<<<<<<< HEAD
       body:_getPage(selectedItem)
              ,bottomNavigationBar: FancyBottomNavigation(tabs: 
              [TabData(iconData: Icons.home_outlined, title: "Home"),
              TabData(iconData: Icons.local_offer_outlined, title: "Offers"),
              TabData(iconData: Icons.settings_outlined, title: "Services"),
              TabData(iconData: Icons.work_outline_outlined, title: "Works"),
              TabData(iconData: Icons.call_outlined, title: "contact"),
              TabData(iconData: Icons.person_outline,title: "Profile")], 
              inactiveIconColor: PrimaryColor,
              textColor: Colors.grey,
              activeIconColor: Colors.white,
              circleColor: PrimaryColor,
              barBackgroundColor:Colors.white,
              initialSelection: 0,
               onTabChangedListener:(int i){setState(() {
                 selectedItem=i;
               });}),
              
              );
=======
       body:ListView(children: [
         Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,  
             children: [
             InkWell(
                 onTap: (){
                   Navigator.of(context).pushNamed('/services');
                 },
                 child: Icon(Icons.search,color: Colors.white,)),
             Image.asset("assets/3.png",width: 200,),
             InkWell(
               onTap: (){
                 Navigator.of(context).pushNamed('/login');
               },
                 child: Icon(Icons.search,color: Colors.white,))]
             ),Container(child: image_slider_carousel ,),
             SizedBox(height: 20,),
             Padding(
               padding: const EdgeInsets.all(16.0),
               child: Text("Categories",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
             ),
              Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Stack(children: [Column(
                          children: [
                            SizedBox(height: 30,),
                            ClipRRect(borderRadius: BorderRadius.circular(20),
                            child: Container(color: Colors.white,width: 150,height: 80,),)
                          ],
                        ),
                         Positioned(
                              bottom: 30,
                              left: 29,
                              child: Stack(children:[ Image.asset("assets/4.png"),
                              Positioned(
                                left: 30,
                                top: 25,
                                child: Icon(Icons.settings)),
                                
                                ]
                              ))],),
                              ),
                              Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Stack(children: [Column(
                          children: [
                            SizedBox(height: 30,),
                            ClipRRect(borderRadius: BorderRadius.circular(20),
                            child: Container(color: Colors.white,width: 150,height: 80,),)
                          ],
                        ),
                         Positioned(
                              bottom: 30,
                              left: 29,
                              child: Stack(children:[ Image.asset("assets/4.png"),
                              Positioned(
                                left: 30,
                                top: 25,
                                child: Icon(Icons.settings))]
                              ))],),)
                    ],
                  ),
                  SizedBox(height: 20,),
                   Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Stack(children: [Column(
                          children: [
                            SizedBox(height: 30,),
                            ClipRRect(borderRadius: BorderRadius.circular(20),
                            child: Container(color: Colors.white,width: 150,height: 80,),)
                          ],
                        ),
                         Positioned(
                              bottom: 30,
                              left: 29,
                              child: Stack(children:[ Image.asset("assets/4.png"),
                              Positioned(
                                left: 30,
                                top: 25,
                                child: Icon(Icons.settings))]
                              ))],),
                              ),
                              Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Stack(children: [Column(
                          children: [
                            SizedBox(height: 30,),
                            ClipRRect(borderRadius: BorderRadius.circular(20),
                            child: Container(color: Colors.white,width: 150,height: 80,),)
                          ],
                        ),
                         Positioned(
                              bottom: 30,
                              left: 29,
                              child: Stack(children:[ Image.asset("assets/4.png"),
                              Positioned(
                                left: 30,
                                top: 25,
                                child: Icon(Icons.settings))]
                              ))],),)
                    ],
                  ),
                ],
              )],));
>>>>>>> abbe62b45e94d43e2873953b5f21d5fa76093d6d
       
       
  }

  _getPage(int i) {
    switch(i) { 
   case 0: { 
     return homep();  
   }
   case 1:{
      return phone();
   }

  }
  
}}