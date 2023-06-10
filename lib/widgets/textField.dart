import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/material/colors.dart';

class MyTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscuretext;

  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscuretext,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: TextField(
          controller: controller,
          obscureText: obscuretext,
          decoration: InputDecoration(
              enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
                borderSide: BorderSide(color: Color.fromARGB(255, 96, 96, 96)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color.fromARGB(255, 96, 96, 96)),
              ),
              fillColor: Colors.white,
              filled: true,
              hintText: hintText,
              hintStyle: TextStyle(color: Colors.grey[500])),
        ),
      ),
    );
  }
}
