import 'package:flutter/material.dart';
import 'package:wakelni/constants/constants.dart';
import 'package:wakelni/widgets/ourbar.dart';
class Offers extends StatefulWidget {
  const Offers({ Key? key }) : super(key: key);

  @override
  _OffersState createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
             SizedBox(height: 10,),
             Container(height: size.height * 0.1,
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text("العروض",style: TextStyle(fontSize: 30,decoration: TextDecoration.underline,
                 color: Colors.white),),
               ],
             ),color: Colors.grey[300],),
             Padding(
               padding: const EdgeInsets.all(16.0),
               child: ClipRRect(
                 borderRadius: BorderRadius.circular(25.0),
                 child: Container(color: Colors.white,
              
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                    Image.asset("assets/111.png"),
                    Column(
                      children: [
                        Text("باقة موقع ويب بلإضافة الى  ",style: TextStyle(fontSize: 15,),),
                        Text("دعم فني سنوي مجاني ",style: TextStyle(fontSize: 15,),),
                        Text("10ريال  ",style: TextStyle(fontSize: 9,decoration: TextDecoration.underline,),),
                        Container(
                    height: 30.0,
                    width: 60,
                    child: Material(
                      borderRadius: BorderRadius.circular(20.0),
                      shadowColor: PrimaryColor,
                      color: PrimaryColor,
                      elevation: 7.0,
                      child: Center(
                        child: Text('شراء',style: TextStyle(color: Colors.white),),
               
                      ),
                      ),
                    ),SizedBox(height: 10,)
                      ],
                    ),
                    
                    ],
                 )),
               ),
             )
             ]);
  }
}