import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter_ui_practise/Login/login_screen.dart';
import 'package:flutter_ui_practise/components/rounded_button.dart';
import 'package:flutter_ui_practise/constants.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: size.height,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
                left: 0,
                top: 0,
                child: Image.asset(
                  "assets/images/main_top.png",
                  width: size.width * 0.35,
                )),
            Positioned(
                right: 0,
                bottom: 0,
                child: Image.asset("assets/images/login_bottom.png",
                    width: size.width * 3.5)),
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Sign Up ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SvgPicture.asset(
                    "assets/icons/signup.svg",
                    height: size.height * 0.4,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFieldContainer(
                    obscured: false,
                    hintText: 'Enter a email',
                    onChanged: (value) {},
                    iccon: Icon(
                      Icons.person,
                      color: kPrimaryColor,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFieldContainer(
                    obscured: true,
                    hintText: 'Enter a passsword',
                    onChanged: (value) {},
                    iccon: Icon(
                      Icons.lock,
                      color: kPrimaryColor,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RoundedButton(
                      color: kPrimaryColor,
                      text: 'Sign Up',
                      textColor: Colors.white,
                      press: () {}),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already ????????',
                        style: TextStyle(color: kPrimaryColor),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return LoginScreen();
                            }));
                            print('abc');
                          },
                          child: Text(
                            'Log In',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: kPrimaryColor),
                          ))
                    ],
                  ),
                  SafeArea(
                    child: Padding(
                      padding:
                          const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                              child: Divider(
                            thickness: 1,
                            height: 2,
                            color: kPrimaryColor,
                          )),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('OR'),
                          ),
                          Expanded(
                              child: Divider(
                            thickness: 1,
                            height: 2,
                            color: kPrimaryColor,
                          )),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ScolIcon(
                            press: () {
                              print('facebook');
                            },
                            image: 'assets/icons/facebook.svg'),
                        ScolIcon(
                            press: () {print('Google');}, image: 'assets/icons/google-plus.svg'),
                        ScolIcon(press: () {print('Twitter');}, image: 'assets/icons/twitter.svg'),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ScolIcon extends StatelessWidget {
  final VoidCallback press;
  final String image;

  const ScolIcon({
    Key? key,
    required this.press,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          border: Border.all(width: 2),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          image,
          height: 25,
          width: 25,
          color: kPrimaryColor,
        ),
      ),
    );
  }
}
