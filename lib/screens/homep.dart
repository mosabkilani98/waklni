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
        indicatorBgPadding: 5.0,
        autoplay: false,
      ),
    );
    return ListView(
      children: [
        Row(children: [
          SizedBox(
            width: 20.0,
          ),
          InkWell(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return OurBar();
                    });
              },
              child: Icon(
                Icons.menu,
                color: Colors.grey,
              )),
          SizedBox(
            width: size.width * 0.25,
          ),
          SvgPicture.asset(
            "assets/Repeat Grid 75.svg",
          ),
          SizedBox(
            width: size.width * 0.25,
          ),
          InkWell(
              onTap: () {
                Navigator.of(context).pushNamed('/notificatios');
              },
              child: Icon(
                Icons.notifications_none_outlined,
                color: Colors.grey,
              ))
        ]),
        Container(
          child: image_slider_carousel,
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "التصنيفات",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0),
            ),
            SizedBox(
              width: size.width * 0.05,
            ),
          ],
        ),
        SizedBox(
          height: size.height * 0.007,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(children: [
              SvgPicture.asset("assets/Repeat Grid 5.svg"),
              Text('برمجة')
            ]),
            Column(children: [
              SvgPicture.asset("assets/Repeat Grid 3.svg"),
              Text('تصميم')
            ]),
            Column(children: [
              SvgPicture.asset("assets/Repeat Grid 1.svg"),
              Text('تسويق')
            ]),
            Column(children: [
              SvgPicture.asset("assets/Repeat Grid 4.svg"),
              Text('ادارة'),
            ]),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "شركائنا",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0),
            ),
            SizedBox(
              width: size.width * 0.05,
            ),
          ],
        ),
        Wrap(
          spacing: size.width * 0.005,
          children: [
            Column(children: [
              Stack(children: [
                SvgPicture.asset("assets/circle.svg"),
                Positioned.fill(
                    child: Image.asset('assets/44807-Sticker-Fanta-logo.png'))
              ]),
              Text('برمجة')
            ]),
            Column(children: [
              Stack(children: [
                SvgPicture.asset("assets/circle.svg"),
                Positioned.fill(
                    child: Image.asset('assets/44807-Sticker-Fanta-logo.png'))
              ]),
              Text('تصميم')
            ]),
            Column(children: [
              Stack(children: [
                SvgPicture.asset("assets/circle.svg"),
                Positioned.fill(
                    child: Image.asset('assets/44807-Sticker-Fanta-logo.png'))
              ]),
              Text('تسويق')
            ]),
            Column(children: [
              Stack(children: [
                SvgPicture.asset("assets/circle.svg"),
                Positioned.fill(
                    child: Image.asset('assets/44807-Sticker-Fanta-logo.png'))
              ]),
              Text('ادارة'),
            ]),
          ],
        ),
        SizedBox(
          height: size.height * 0.02,
        )
      ],
    );
  }
}
