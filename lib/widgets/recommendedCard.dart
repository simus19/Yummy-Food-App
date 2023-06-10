import 'package:flutter/material.dart';

class recommendedCard extends StatelessWidget {
  recommendedCard({
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
          height: 225,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(width: 1, color: Color(0xffBFC6CC)),
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
                      left: 200,
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
                              SizedBox(width: 160),
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
