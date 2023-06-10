import 'package:flutter/material.dart';
import 'package:food_app/widgets/button.dart';
import 'package:food_app/widgets/textField.dart';
import 'package:food_app/menu.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

//edit text
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
//sign in
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black,
          ),
          title: Text(
            "Sign In",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 24)),
                  Text(
                    'Phone number',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),

              //username textfield
              MyTextField(
                controller: usernameController,
                hintText: 'Enter your phone number',
                obscuretext: false,
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 24)),
                  Text(
                    'Password',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 10,
              ),
              //password texfield

              MyTextField(
                controller: passwordController,
                hintText: 'Enter password',
                obscuretext: true,
              ),

              SizedBox(height: 16),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Color(0xFFF87146),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 32),
              //sig in
              MyButton(
                ontap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return Menu();
                    }),
                  );
                },
                nameBtn: "Sign In",
              ),

              SizedBox(height: 32),
              //OR
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey[90],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Text(
                        'or',
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey[90],
                      ),
                    ),
                  ],
                ),
              ),

              //GOOGLE,FACEBOOK DAN APPLE
              SizedBox(height: 32),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0XFF5384EE),
                  borderRadius: BorderRadius.circular(32),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Image.asset("images/Google - Logo.png"),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Continue with Google",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0XFF415792),
                  borderRadius: BorderRadius.circular(32),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Image.asset("images/Facebook - Logo.png"),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Continue with Facebook",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0XFF0000000),
                  borderRadius: BorderRadius.circular(32),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Image.asset("images/apple.png"),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Continue with GoogleApple",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Do not have an account?",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Sign up",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Color(0XFFF87146)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
    // ),
    // );
  }
}
