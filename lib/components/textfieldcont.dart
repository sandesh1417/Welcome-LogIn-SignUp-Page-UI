import 'package:flutter/material.dart';
import 'package:flutter_ui_practise/constants.dart';

class TextFieldContainer extends StatelessWidget {
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
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      //  height: 30,
      decoration: BoxDecoration(
        color: kPrimaryLightColor,
        borderRadius: BorderRadius.circular(29),
      ),
      child: TextField(
        obscureText: obscured,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintText,
          icon: iccon,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
