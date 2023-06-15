import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:food_app/models.dart';
import 'package:food_app/repository.dart';
import 'package:food_app/widgets/categoryCard.dart';
import 'package:food_app/widgets/foodCart.dart';
import 'package:food_app/widgets/recommendedCard.dart';
import 'package:food_app/widgets/restaurantCard.dart';
import 'package:food_app/widgets/search.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  List<Restaurant> listRestaurant = [];
  Repository repository = Repository();

  getData() async {
    listRestaurant = await repository.getData();
    setState(() {});
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(21),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    splashRadius: 20,
                    icon: Image.asset("images/menu.png"),
                  ),
                  Row(
                    children: [
                      Text(
                        "NYC,Broadwa...",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xff616161),
                        ),
                      ),
                      Image.asset("images/arrow-right.png"),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        splashRadius: 20,
                        icon: Image.asset("images/notification.png"),
                      ),
                      IconButton(
                        onPressed: () {},
                        splashRadius: 20,
                        icon: Image.asset("images/bag.png"),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 12),
              search(),
              SizedBox(height: 23),
              Image.asset("images/banner1.png"),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  categoryCard(
                    name: "Flash Deal",
                    icon: "images/sale.png",
                    ontap: () {},
                  ),
                  SizedBox(width: 12),
                  categoryCard(
                    name: "Nice Shop",
                    icon: "images/niceshop.png",
                    ontap: () {},
                  ),
                  SizedBox(width: 12),
                  categoryCard(
                    name: "Points",
                    icon: "images/points.png",
                    ontap: () {},
                  ),
                  SizedBox(width: 12),
                  categoryCard(
                    name: "Rice",
                    icon: "images/rice.png",
                    ontap: () {},
                  ),
                ],
              ),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  categoryCard(
                    name: "Noodles",
                    icon: "images/noodles.png",
                    ontap: () {},
                  ),
                  SizedBox(width: 12),
                  categoryCard(
                    name: "Vegetable",
                    icon: "images/vegetable.png",
                    ontap: () {},
                  ),
                  SizedBox(width: 12),
                  categoryCard(
                    name: "BBQ",
                    icon: "images/bbq.png",
                    ontap: () {},
                  ),
                  SizedBox(width: 12),
                  categoryCard(
                    name: "Other",
                    icon: "images/other.png",
                    ontap: () {},
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Discount Guaranteed!",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Image.asset("images/arrow-right.png"),
                ],
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    foodCard(
                      name: "Pizza Hut",
                      image: "images/food1.png",
                      ontap: () {},
                    ),
                    SizedBox(width: 15),
                    foodCard(
                      name: "Pizza Hut",
                      image: "images/food3.png",
                      ontap: () {},
                    ),
                    SizedBox(width: 15),
                    foodCard(
                      name: "Pizza Hut",
                      image: "images/food2.png",
                      ontap: () {},
                    ),
                    SizedBox(width: 15),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Image.asset("images/banner2.png"),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "What's delicious arround here?",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Image.asset("images/arrow-right.png"),
                ],
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    foodCard(
                      name: "Pizza Hut",
                      image: "images/food4.png",
                      ontap: () {},
                    ),
                    SizedBox(width: 15),
                    foodCard(
                      name: "Pizza Hut",
                      image: "images/food5.png",
                      ontap: () {},
                    ),
                    SizedBox(width: 15),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Highlights of March",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Image.asset("images/arrow-right.png"),
                ],
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    foodCard(
                      name: "Pizza Hut",
                      image: "images/food6.png",
                      ontap: () {},
                    ),
                    SizedBox(width: 15),
                    foodCard(
                      name: "Pizza Hut",
                      image: "images/food7.png",
                      ontap: () {},
                    ),
                    SizedBox(width: 15),
                    foodCard(
                      name: "Pizza Hut",
                      image: "images/food3.png",
                      ontap: () {},
                    ),
                    SizedBox(width: 15),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Nearby Restaurants",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Image.asset("images/arrow-right.png"),
                ],
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  height: 200,
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return restaurantCard(
                        name: listRestaurant[index].name_restoran,
                        image: listRestaurant[index].image,
                        ontap: () {},
                      );
                    },
                    itemCount: listRestaurant.length,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recommended For You",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Image.asset("images/arrow-right.png"),
                ],
              ),
              SizedBox(height: 20),
              recommendedCard(
                name: "Hamburger",
                image: "images/recom1.png",
                ontap: () {},
              ),
              SizedBox(height: 16),
              recommendedCard(
                name: "Hamburger",
                image: "images/recom2.png",
                ontap: () {},
              ),
              SizedBox(height: 16),
              recommendedCard(
                name: "Hamburger",
                image: "images/recom3.png",
                ontap: () {},
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}


// SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     restaurantCard(
//                       name: "Esandra Restauran",
//                       image: "images/restaurant1.png",
//                       ontap: () {},
//                     ),
//                     SizedBox(width: 15),
//                     restaurantCard(
//                       name: "Esandra Restauran",
//                       image: "images/restaurant2.png",
//                       ontap: () {},
//                     ),
//                     SizedBox(width: 15),
//                   ],
//                 ),
//               ),
