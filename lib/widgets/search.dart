import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class search extends StatelessWidget {
  const search({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: const EdgeInsets.only(left: 23),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Color(0xffECF1F6),
        ),
        height: 51.57,
        child: Center(
          child: TextFormField(
            decoration: InputDecoration(
              icon: Image.asset("images/search.png"),
              border: InputBorder.none,
              hintText: "What are you yearning for?",
              hintStyle: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Color(0xff9CA4AB),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
