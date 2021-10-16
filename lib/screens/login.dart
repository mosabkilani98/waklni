import 'package:flutter/material.dart';
import 'package:wakelni/constants/constants.dart';
import 'package:wakelni/widgets/loginscreen.dart';
class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      backgroundColor: PrimaryColor,
      body: LoginWidget(),
    ));
  }
}
