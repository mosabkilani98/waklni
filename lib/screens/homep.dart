 import 'package:carousel_pro_nullsafety/carousel_pro_nullsafety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class homep extends StatelessWidget {
  const homep({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
     Widget image_slider_carousel=Container(
      height: 200,
      child: Carousel(
         dotBgColor: Colors.transparent,
        images: [Image.asset("assets/1.png",fit: BoxFit.cover,),
                 Image.asset("assets/1.png",fit: BoxFit.cover,),
                 Image.asset("assets/1.png",fit: BoxFit.cover,),
                 Image.asset("assets/1.png",fit: BoxFit.cover,),],
        indicatorBgPadding: 5.0,
        autoplay: false,

      ),
      
    );
    return ListView(children: [
         Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,  
             children: [
             InkWell(
                 onTap: (){
                   Navigator.of(context).pushNamed('/services');
                 },
                 child: Icon(Icons.menu,color: Colors.white,)),
             Image.asset("assets/3.png",width: 200,),
             InkWell(
               onTap:(){
                 Navigator.of(context).pushNamed('/login');
               },
                 child: Icon(Icons.search,color: Colors.white,))]
             ),Container(child: image_slider_carousel ,),
             SizedBox(height: 20,),
             Padding(
               padding: const EdgeInsets.all(16.0),
               child: Text("Categories",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),),
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
                              child: Stack(children:[SvgPicture.asset("assets/Repeat Grid 19.svg"),
                              
                                
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
                              child: Stack(children:[SvgPicture.asset("assets/Repeat Grid 22.svg"),
                               ]
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
                              child: Stack(children:[ SvgPicture.asset("assets/Repeat Grid 21.svg"),
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
                              child: Stack(children:[ SvgPicture.asset("assets/Repeat Grid 22.svg"),
                              ]
                              ))],),)
                    ],
                  ),
                ],
              ),
              
              
              ],);
  }
}
