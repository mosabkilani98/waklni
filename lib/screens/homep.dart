import 'package:carousel_pro_nullsafety/carousel_pro_nullsafety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wakelni/widgets/ourbar.dart';

class homep extends StatelessWidget {
  const homep({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Widget image_slider_carousel = Container(
      height: 200,
      child: Carousel(
        dotBgColor: Colors.transparent,
        images: [
          Image.asset(
            "assets/1.png",
            fit: BoxFit.cover,
          ),
          Image.asset(
            "assets/1.png",
            fit: BoxFit.cover,
          ),
          Image.asset(
            "assets/1.png",
            fit: BoxFit.cover,
          ),
          Image.asset(
            "assets/1.png",
            fit: BoxFit.cover,
          ),
        ],
<<<<<<< Updated upstream
        indicatorBgPadding: 1.0,
        autoplay: false,
      ),
    );
    return ListView(
      children: [
        SizedBox(
          height: size.height * 0.03,
        ),
        Row(children: [
          SizedBox(
            width: 10.0,
          ),
          IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.grey,
              ),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return OurBar();
                    });
              }),
          SizedBox(
            width: size.width * 0.25,
          ),
          Image.asset(
            "assets/logo1.png",
            color: Colors.grey,
          ),
          SizedBox(
            width: size.width * 0.25,
          ),
          IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.grey,
=======
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
>>>>>>> Stashed changes
              ),
              onPressed: () {
                Navigator.of(context).pushNamed('/login');
              }),
        ]),
        SizedBox(
          height: size.height * 0.03,
        ),
        Container(
          child: image_slider_carousel,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Text(
              'تصنيفات',
              style: TextStyle(fontSize: 18.0),
            ),
          ),
        ),
        SizedBox(
          height: size.height * 0.01,
        ),
        Wrap(
          spacing: size.width * 0.03,
          children: [
            SizedBox(
              width: 8.0,
            ),
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: SvgPicture.asset(
                    'assets/code1.svg',
                    width: 25.0,
                    height: 25.0,
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(24),
                  ),
                ),
                Text('برمجة')
              ],
            ),
            Column(children: [
              ElevatedButton(
                onPressed: () {},
                child: SvgPicture.asset(
                  'assets/design.svg',
                  width: 25.0,
                  height: 25.0,
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(24),
                ),
              ),
              Text('تصميم'),
            ]),
            Column(children: [
              ElevatedButton(
                onPressed: () {},
                child: SvgPicture.asset(
                  'assets/marketing.svg',
                  width: 35.0,
                  height: 35.0,
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(20),
                ),
              ),
              Text('تسويق'),
            ]),
            Column(children: [
              ElevatedButton(
                onPressed: () {},
                child: SvgPicture.asset('assets/adminstration.svg'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(24),
                ),
              ),
              Text('ادارة'),
            ])
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Text(
              'شركائنا',
              style: TextStyle(fontSize: 18.0),
            ),
          ),
        ),
        Wrap(
          spacing: size.width * 0.03,
          children: [
            SizedBox(
              width: 8.0,
            ),
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: SvgPicture.asset(
                    'assets/44807-Sticker-Fanta-logo.svg',
                    width: 40.0,
                    height: 40.0,
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(18),
                  ),
                ),
                Text('فانتا'),
              ],
            ),
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: SvgPicture.asset(
                    'assets/32192-5-pepsi-logo-transparent-image-thumb.svg',
                    width: 40.0,
                    height: 40.0,
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(18),
                  ),
                ),
                Text('بيبسي'),
              ],
            ),
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Image.asset(
                    'assets/7_Up_Logo_Pepsi.svg.jpg',
                    width: 30.0,
                    height: 30.0,
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(22),
                  ),
                ),
                Text('سفن أب'),
              ],
            ),
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Image.asset(
                    'assets/Coca-Cola_logo_araby.svg.jpg',
                    width: 30.0,
                    height: 30.0,
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(22),
                  ),
                ),
                Text('كوكا كولا'),
              ],
            )
          ],
        ),
        SizedBox(
          height: 30.0,
        ),
      ],
    );
  }
}
