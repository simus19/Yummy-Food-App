import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:food_app/pages/homePage.dart';

class MyButton extends StatelessWidget {
  MyButton({required this.ontap, required this.nameBtn});

  void Function()? ontap;
  String nameBtn;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(24),
      child: InkWell(
        onTap: ontap,
        child: Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
              color: Color(0xFFF87146),
              borderRadius: BorderRadius.circular(32)),
          child: Center(
            child: Text(
              nameBtn,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}
