 import 'package:carousel_pro_nullsafety/carousel_pro_nullsafety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wakelni/constants/constants.dart';
import 'package:wakelni/widgets/ourbar.dart';
class homep extends StatelessWidget {
  const homep({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
                   showDialog(context: context,
                     builder: (BuildContext context)
                     {
                       return OurBar();
                     }
                     );
                 },
                 child: Icon(Icons.menu,color: Colors.white,)),
             Image.asset("assets/3.png",width: 200,),
             InkWell(
               onTap:(){
                 Navigator.of(context).pushNamed('/notificatios');
               },
                 child: Icon(Icons.notifications_none_outlined,color: Colors.white, ))]
             ),
      Container(
        child: image_slider_carousel ,),
             SizedBox(height: 20,),
             Padding(
               padding: const EdgeInsets.all(16.0),
               child: Text("Categories",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),),
             ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Stack(children: [
                    Column(
                    children: [
                      SizedBox(height: size.height * 0.05,),
                      ClipRRect(borderRadius: BorderRadius.circular(20),
                        child:
                        Container(
                          color: Colors.white,
                          width: size.width * 0.42,
                          height: size.height * 0.1,
                        ),
                      ),
                    ],
                  ),
                   Positioned(
                        bottom: size.height * 0.045,
                        left: size.width * 0.09,
                        child:
                        SvgPicture.asset("assets/Repeat Grid 19.svg")
                   ),
                  ],
                  ),
                  Stack(children: [
                    Column(
                      children: [
                        SizedBox(height: size.height * 0.05,),
                        ClipRRect(borderRadius: BorderRadius.circular(20),
                          child:
                          Container(
                            color: Colors.white,
                            width: size.width * 0.42,
                            height: size.height * 0.1,
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                        bottom: size.height * 0.045,
                        left: size.width * 0.09,
                        child:
                        SvgPicture.asset("assets/Repeat Grid 22.svg")
                    ),
                  ],
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.01,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Stack(children: [
                    Column(
                      children: [
                        SizedBox(height: size.height * 0.05,),
                        ClipRRect(borderRadius: BorderRadius.circular(20),
                          child:
                          Container(
                            color: Colors.white,
                            width: size.width * 0.42,
                            height: size.height * 0.1,
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                        bottom: size.height * 0.045,
                        left: size.width * 0.09,
                        child:
                        SvgPicture.asset("assets/des.svg"),
                    ),
                  ],
                  ),
                  Stack(children: [
                    Column(
                      children: [
                        SizedBox(height: size.height * 0.05,),
                        ClipRRect(borderRadius: BorderRadius.circular(20),
                          child:
                          Container(
                            color: Colors.white,
                            width: size.width * 0.42,
                            height: size.height * 0.1,
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                        bottom: size.height * 0.045,
                        left: size.width * 0.09,
                        child:
                        SvgPicture.asset("assets/Repeat Grid 21.svg")
                    ),
                  ],
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.1,
              ),
              
              ],
    );
  }
}
