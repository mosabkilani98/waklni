import 'package:flutter/material.dart';
import '../constants/constants.dart';
class Services extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: PrimaryColor,
      body: Stack(
        children: [
          Positioned(
            top: 50.0,
            left: 15.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(icon: Icon(Icons.menu), onPressed: (){}),
                SizedBox()

              ],
            ),
          ),
        ],
      ),
    );
  }
}

