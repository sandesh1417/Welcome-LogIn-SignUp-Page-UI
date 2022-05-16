import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui_practise/For_api/remote_service.dart';
import 'package:flutter_ui_practise/components/rounded_button.dart';
import 'package:flutter_ui_practise/Sing Up/sign_up.dart';

import 'package:flutter_ui_practise/constants.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
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
                  const Text(
                    'Log IN ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SvgPicture.asset(
                    "assets/icons/login.svg",
                    height: size.height * 0.4,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFieldContainer(
                    //controller= controller;
                    obscured: false,
                    hintText: 'Enter a email',
                    onChanged: (value) {},
                    iccon: const Icon(
                      Icons.person,
                      color: kPrimaryColor,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFieldContainer(
                    obscured: true,
                    hintText: 'Enter a passsword',
                    onChanged: (value) {},
                    iccon: const Icon(
                      Icons.lock,
                      color: kPrimaryColor,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  RoundedButton(
                      color: kPrimaryColor,
                      text: 'Log In',
                      textColor: Colors.white,
                      press: () async {
                        //    final response = await RemoteService().getToken();
                        //  Fluttertoast.showToast(msg: response);
                      }),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'No Account ????????',
                        style: TextStyle(color: kPrimaryColor),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const SignupScreen();
                            }));
                            print('abc');
                          },
                          child: const Text(
                            'Sing Up',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: kPrimaryColor),
                          ))
                    ],
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

class TextFieldContainer extends StatefulWidget {
  final String hintText;
  final Icon iccon;
  final ValueChanged<String> onChanged;
  final bool obscured;

  const TextFieldContainer({
    Key? key,
    required this.hintText,
    required this.iccon,
    required this.onChanged,
    required this.obscured,
  }) : super(key: key);

  @override
  State<TextFieldContainer> createState() => _TextFieldContainerState();
}

class _TextFieldContainerState extends State<TextFieldContainer> {
  final _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      //  height: 30,
      decoration: BoxDecoration(
        color: kPrimaryLightColor,
        borderRadius: BorderRadius.circular(29),
      ),
      child: TextField(
        controller: _controller,
        obscureText: widget.obscured,
        onChanged: widget.onChanged,
        decoration: InputDecoration(
          hintText: widget.hintText,
          icon: widget.iccon,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
