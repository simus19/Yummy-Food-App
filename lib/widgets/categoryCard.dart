import 'package:flutter/material.dart';

class categoryCard extends StatelessWidget {
  categoryCard({
    required this.name,
    required this.icon,
    required this.ontap,
  });

  String name;
  String icon;
  void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: ontap,
        borderRadius: BorderRadius.circular(5),
        child: Container(
          padding: EdgeInsets.all(5),
          width: 78,
          height: 100,
          // color: Colors.amber,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(icon),
              SizedBox(height: 8),
              Text(
                name,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
