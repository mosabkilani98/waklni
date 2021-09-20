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
