import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui_practise/Login/login_screen.dart';
import 'package:flutter_ui_practise/components/rounded_button.dart';

import 'package:flutter_ui_practise/constants.dart';

import '../Sing Up/sign_up.dart';

class BackGround extends StatelessWidget {
  const BackGround({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset('assets/images/main_top.png'),
            width: size.width * 0.4,
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset('assets/images/main_bottom.png'),
            width: size.width * 0.4,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'WELCOME TO THE HELL',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              SvgPicture.asset(
                "assets/icons/chat.svg",
                height: size.height * 0.4,
              ),
              SizedBox(
                height: 10,
              ),
              RoundedButton(
                text: 'Log In',
                textColor: Colors.white,
                color: kPrimaryColor,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const LoginScreen();
                      },
                    ),
                  );
                },
              ),
              SizedBox(
                height: 10,
              ),
              RoundedButton(
                text: 'Sign Up',
                textColor: Colors.black,
                color: kPrimaryLightColor,
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SignupScreen();
                  }));
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
