import 'dart:async';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
// import 'package:food_app/menu.dart';
import 'package:food_app/pages/loginPage.dart';

class loadingPage extends StatefulWidget {
  @override
  State<loadingPage> createState() => _loadingPageState();
}

class _loadingPageState extends State<loadingPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeInDown(
              duration: Duration(seconds: 2),
              child: Image.asset(
                "images/logoapp.png",
                width: 170,
                height: 195,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
