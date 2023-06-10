import 'package:flutter/material.dart';

class favoriteCard extends StatelessWidget {
  favoriteCard({
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
        onTap: () {},
        child: Container(
          padding: EdgeInsets.all(24),
          height: 132,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            border: Border.symmetric(
              horizontal: BorderSide(color: Color(0xffBFC6CC)),
            ),
            color: Color(0xffE8E8E8),
          ),
          child: Row(
            children: [
              Image.asset(image),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(name,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          )),
                      SizedBox(width: 80),
                      Image.asset("images/love1.png"),
                    ],
                  ),
                  SizedBox(height: 5),
                  Text("25 To Hieu, Cau Giay",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff616161),
                      )),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Image.asset("images/star.png"),
                      Text(
                        " 4.8 (1.2k) | 1,5 km",
                        style:
                            TextStyle(fontSize: 14, color: Color(0xff66707A)),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(width: 20),
              Image.asset("images/Mask.png"),
            ],
          ),
        ),
      ),
    );
  }
}
