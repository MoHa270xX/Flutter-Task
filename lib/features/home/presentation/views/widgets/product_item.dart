import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      //width: size.width * ,
      height: size.height / 3,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.blue.shade200, width: 1.5),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 16, left: 16),
                    child: Image.asset(
                      "assets/images/7.png",
                      width: 95,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text("Nike Air Jordon", style: TextStyle(fontSize: 14)),
                  SizedBox(height: 4),
                  Text(
                    "Nike shoes flexible for wo..",
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(height: 6),
                  Row(
                    children: [
                      Text("EGP 1.200", style: TextStyle(fontSize: 12)),
                      SizedBox(width: 6),
                      Text(
                        "2000 EGP",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.lightBlue,
                          decoration: TextDecoration.lineThrough,
                          decorationColor: Colors.blue,
                          decorationThickness: 2,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Text("Review", style: TextStyle(fontSize: 12)),
                      SizedBox(width: 4),
                      Text("(4.6)", style: TextStyle(fontSize: 12)),
                      SizedBox(width: 4),

                      Icon(Icons.star, color: Colors.yellow, size: 14),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 8,
            top: 8,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  FontAwesomeIcons.heart,
                  color: Color(0xff004078),
                  size: 30,
                ),
              ),
            ),
          ),
          Positioned(
            right: 12,
            bottom: 24,
            child: Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                
                color: Color(0xff004078),
                borderRadius: BorderRadius.circular(30),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  FontAwesomeIcons.plus,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
