import 'package:flutter/material.dart';
import 'package:food_app/widgets/favoriteCard.dart';

class favoritePage extends StatelessWidget {
  const favoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10),
              Center(
                child: Text(
                  "Favourite List",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Image.asset("images/favorite1.png"),
              ),
              favoriteCard(
                name: "Grsndma's Shop",
                image: "images/f1.png",
                ontap: () {},
              ),
              favoriteCard(
                name: "Grsndma's Shop",
                image: "images/f2.png",
                ontap: () {},
              ),
              favoriteCard(
                name: "Grsndma's Shop",
                image: "images/f3.png",
                ontap: () {},
              ),
              favoriteCard(
                name: "Grsndma's Shop",
                image: "images/f4.png",
                ontap: () {},
              ),
              favoriteCard(
                name: "Grsndma's Shop",
                image: "images/f5.png",
                ontap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
