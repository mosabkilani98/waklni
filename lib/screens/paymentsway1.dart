import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wakelni/constants/constants.dart';

class Payments extends StatefulWidget {
  const Payments({Key? key}) : super(key: key);

  @override
  _PaymentsState createState() => _PaymentsState();
}

class _PaymentsState extends State<Payments> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: PrimaryColor,
        body: ListView(
          children: [
            SizedBox(
              height: size.height * 0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'طريقة الدفع',
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'الدفع عبر الانترنت',
                      style: TextStyle(
                        fontSize: 22.0,
                        color: Colors.white,
                      ),
                    ),
                    Wrap(
                      children: [
                        Text(
                          'بعد دفعك الأول',
                          style:
                              TextStyle(color: Colors.white54, fontSize: 19.0),
                        ),
                        Text(
                          'سنقوم بحفظ التفاصيل الخاصة بك',
                          style:
                              TextStyle(color: Colors.white54, fontSize: 19.0),
                        ),
                        Text(
                          'لاستخدامها في المستقبل',
                          style:
                              TextStyle(color: Colors.white54, fontSize: 19.0),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              color: Colors.white,
              endIndent: size.width * 0.05,
              indent: size.width * 0.05,
            ),
            Row(
              children: [
                SizedBox(
                  width: size.width * 0.1,
                ),
                Icon(
                  Icons.keyboard_arrow_left,
                  color: Colors.white,
                ),
                Expanded(
                  child: SizedBox(),
                ),
                Text(
                  'Visa Card',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(
                  width: size.width * 0.03,
                ),
                SvgPicture.asset('assets/visa-light-large.svg'),
                SizedBox(
                  width: size.width * 0.09,
                ),
              ],
            ),
            Divider(
              color: Colors.white,
              endIndent: size.width * 0.05,
              indent: size.width * 0.05,
            ),
            Row(
              children: [
                SizedBox(
                  width: size.width * 0.1,
                ),
                Icon(
                  Icons.keyboard_arrow_left,
                  color: Colors.white,
                ),
                Expanded(
                  child: SizedBox(),
                ),
                Text(
                  'Master Card',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(
                  width: size.width * 0.03,
                ),
                SvgPicture.asset('assets/mastercard-light-large.svg'),
                SizedBox(
                  width: size.width * 0.09,
                ),
              ],
            ),
            Divider(
              color: Colors.white,
              endIndent: size.width * 0.05,
              indent: size.width * 0.05,
            ),
            Row(
              children: [
                SizedBox(
                  width: size.width * 0.1,
                ),
                Icon(
                  Icons.keyboard_arrow_left,
                  color: Colors.white,
                ),
                Expanded(
                  child: SizedBox(),
                ),
                Text(
                  'PayPal',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(
                  width: size.width * 0.03,
                ),
                SvgPicture.asset('assets/paypal-light-large.svg'),
                SizedBox(
                  width: size.width * 0.09,
                ),
              ],
            ),
            Divider(
              color: Colors.white,
              endIndent: size.width * 0.05,
              indent: size.width * 0.05,
            )
          ],
        ),
      ),
    );
  }
}
