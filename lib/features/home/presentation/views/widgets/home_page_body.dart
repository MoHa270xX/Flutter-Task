import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Row(children: [const ProductItem()]));
  }
}

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      //width: size.width * ,
      height: size.height / 3,
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 8),
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
                        width: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 40),
                    Text("Nike Air Jordon", style: TextStyle(fontSize: 18)),
                    SizedBox(height: 4),
                    Text(
                      "Nike shoes flexible for wo..",
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Text("EGP 1.200", style: TextStyle(fontSize: 18)),
                        SizedBox(width: 16),
                        Text(
                          "2000 EGP",
                          style: TextStyle(
                            fontSize: 18,
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
                        Text("Review", style: TextStyle(fontSize: 16)),
                        SizedBox(width: 8),
                        Text("(4.6)", style: TextStyle(fontSize: 16)),
                        SizedBox(width: 4),

                        Icon(Icons.star, color: Colors.yellow),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              right: 7,
              top: 12,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(FontAwesomeIcons.heart, color: Color(0xff004078),size: 30,),
                ),
              ),
            ),
            Positioned(
              right: 7,
              bottom: 11,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xff004078),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(FontAwesomeIcons.plus, color: Colors.white,size: 30,),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
