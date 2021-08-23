import 'package:flutter/material.dart';
import '../constants/constants.dart';
class Services extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: PrimaryColor,
      body: ListView(
        children: [
          SizedBox(
            height: 20.0,
          ),
          Row(
            children: [
              SizedBox(
                width: 10.0,
              ),
              IconButton(icon: Icon(Icons.menu,color: Colors.white,), onPressed: (){}),
              SizedBox(
                width: size.width * 0.25,
              ),
              Image.asset("assets/logo1.png",color: Colors.white,),
              SizedBox(
                width: size.width * 0.25,
              ),
              IconButton(icon: Icon(Icons.notifications,color: Colors.white,), onPressed: (){}),
            ],
          ),
          SizedBox(
            height: size.height *0.04,
          ),
          Container(
            width: size.width,
            height: size.height *0.1,
            color: Colors.white30,
            child: Stack(
              children: [
                Center(
                  child: Text('الخدمات',style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white
                  ),),
                )
              ],
            ),
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
         Column(
           children: [
             Stack(
               children:[
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     ClipRRect(
                       borderRadius: BorderRadius.circular(20.0),
                       child: Container(
                         color: Colors.white,
                         width: size.width * 0.5,
                         height: size.height * 0.11,
                         child: Center(
                           child: Text('برمجة',style: TextStyle(
                             fontSize: 22.0,
                             color: Colors.grey,
                             fontWeight: FontWeight.bold,
                           ),),
                         )
                       ),
                     )
                   ],
                 ),
                 Positioned(
                   left: size.width *0.20,
                     child: Icon(
                   Icons.code,size: 50.0,
                   color: Colors.black,
                 ))
               ]
             ),
             SizedBox(
               height: size.height * 0.025,
             ),
             Stack(
                 children:[
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       ClipRRect(
                         borderRadius: BorderRadius.circular(20.0),
                         child: Container(
                             color: Colors.white,
                             width: size.width * 0.5,
                             height: size.height * 0.11,
                             child: Center(
                               child: Text('برمجة',style: TextStyle(
                                 fontSize: 22.0,
                                 color: Colors.grey,
                                 fontWeight: FontWeight.bold,
                               ),),
                             )
                         ),
                       )
                     ],
                   ),
                   Positioned(
                       right: size.width *0.20,

                       child: Icon(
                         Icons.code,size: 50.0,
                         color: Colors.black,
                       ))
                 ]
             ),
             SizedBox(
               height:  size.height * 0.025,
             ),
             Stack(
                 children:[
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       ClipRRect(
                         borderRadius: BorderRadius.circular(20.0),
                         child: Container(
                             color: Colors.white,
                             width: size.width * 0.5,
                             height: size.height * 0.11,
                             child: Center(
                               child: Text('برمجة',style: TextStyle(
                                 fontSize: 22.0,
                                 color: Colors.grey,
                                 fontWeight: FontWeight.bold,
                               ),),
                             )
                         ),
                       )
                     ],
                   ),
                   Positioned(
                       left: size.width *0.20,
                       child: Icon(
                         Icons.code,size: 50.0,
                         color: Colors.black,
                       ))
                 ]
             ),
             SizedBox(
               height: size.height * 0.025,
             ),
             Stack(
                 children:[
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       ClipRRect(
                         borderRadius: BorderRadius.circular(20.0),
                         child: Container(
                             color: Colors.white,
                             width: size.width * 0.5,
                             height: size.height * 0.11,
                             child: Center(
                               child: Text('برمجة',style: TextStyle(
                                 fontSize: 22.0,
                                 color: Colors.grey,
                                 fontWeight: FontWeight.bold,
                               ),),
                             )
                         ),
                       )
                     ],
                   ),
                   Positioned(
                       right: size.width *0.20,
                       child: Icon(
                         Icons.code,size: 50.0,
                         color: Colors.black,
                       ))
                 ]
             )
           ],
         )
        ],
      ),
    );
  }
}
