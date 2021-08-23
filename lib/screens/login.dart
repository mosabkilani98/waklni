import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wakelni/constants/constants.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
          backgroundColor: PrimaryColor,
          body: ListView(
            children: [
            SizedBox(
            height: 20.0,
           ),
             Container(
               height: 80,
               child: Row(
                 children: [
                SizedBox(
                  width: 10.0,
                ),
                Column(
                  children: [
                    IconButton(icon: Icon(Icons.menu,color: Colors.white,), onPressed: (){}),
                  ],
                ),
                SizedBox(
                  width: size.width * 0.25,
                ),
                   Column(
                     children: [
                       SizedBox(
                         height: 40.0,
                       ),
                       Image.asset("assets/logo1.png"),
                     ],
                   ),
                   SizedBox(
                     width: size.width * 0.25,
                   ),
                   Column(
                     children: [
                       IconButton(icon: Icon(Icons.notifications,color: Colors.white,), onPressed: (){}),
                     ],
                   ),
            ],
          ),
             ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Stack(
                  children:[
                    Center(
                      child:Image.asset('assets/BG.png'),
                    ),
                    Positioned(
                      left: size.width *0.35,
                        top: size.height * 0.03,
                        child: Text("تسجيل دخول",style: TextStyle(
                        fontSize: 25.0
                        ),
                        ),
                    ),
                   
                  ],
                ),
              )
       ]
        ),
    )
    );
  }
}
class Backgroundclipper extends CustomClipper<Path>
{
  @override
  Path getClip(Size size){
    var  path = Path();
    path.lineTo(0, size.height *0.5 );

    path.lineTo(size.width, size.height-75);


    path.lineTo(size.height, size.width*0.02);

    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper)
  {
    return true;
  }
}
