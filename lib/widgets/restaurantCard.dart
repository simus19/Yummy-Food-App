import 'package:flutter/material.dart';

class restaurantCard extends StatelessWidget {
  restaurantCard({
    required this.name,
    required this.image,
    required this.ontap,
  });

  String image;
  String name;
  void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: ontap,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          width: 210,
          height: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(image),
              SizedBox(height: 10),
              Text(name,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(height: 5),
              Row(
                children: [
                  Image.asset("images/location.png"),
                  SizedBox(width: 5),
                  Text("Elisandra Restaurant",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff66707A),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
