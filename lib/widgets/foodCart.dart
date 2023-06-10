import 'package:flutter/material.dart';

class foodCard extends StatelessWidget {
  foodCard({
    required this.name,
    required this.image,
    required this.ontap,
  });

  String name;
  String image;
  void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: ontap,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          width: 192,
          height: 220,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            // color: Colors.amber,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 220,
                child: Stack(
                  children: [
                    Image.asset(image),
                    Positioned(
                      top: 10,
                      child: Container(
                        height: 20,
                        width: 54,
                        color: Color(0xffF24822),
                        child: Center(
                          child: Text(
                            "Promo",
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 127,
                      left: 70,
                      child: Container(
                        height: 28,
                        width: 116,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color(0xff332C45),
                        ),
                        child: Center(
                          child: Text(
                            "4% off your order",
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 160,
                      left: 8,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "1.5km | ",
                                style: TextStyle(
                                    fontSize: 14, color: Color(0xff78828A)),
                              ),
                              Image.asset(
                                "images/star.png",
                              ),
                              Text(
                                " 4.8 (1.2k)",
                                style: TextStyle(
                                    fontSize: 14, color: Color(0xff78828A)),
                              ),
                              SizedBox(width: 35),
                              Image.asset("images/love.png"),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
