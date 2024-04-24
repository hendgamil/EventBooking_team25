import 'package:flutter/material.dart';

class Textformfield_widget extends StatelessWidget {
  String hinttext;
  IconData prefixIcon;

//  bool? obscuretext;
  // IconData Iconn;
  bool obsure;
  final VoidCallback? onClick;
  final String? Function(String?)? validator;
  TextEditingController controller;

  Textformfield_widget(
      {required this.hinttext,
      this.onClick,
      this.obsure = false,
      // this.Iconn = Icons.visibility,
      required this.prefixIcon,
      required this.controller,
      required this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obsure,
      validator: validator,
      controller: controller,
      decoration: InputDecoration(
          hintText: hinttext,
          // suffixIcon: IconButton(
          //   icon: Iconn ,
          //   onPressed: onClick,
          // ),
          prefixIcon: Icon(
            prefixIcon,
            color: Color(
              (0xff807A7A),
            ),
          ),
          // Set border for enabled state (default)
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: Color((0xEED1D1D1))),
            borderRadius: BorderRadius.circular(15),
          ),
          // Set border for focused state
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: Color((0xEED1D1D1))),
            borderRadius: BorderRadius.circular(15),
          )),
    );
  }
}
