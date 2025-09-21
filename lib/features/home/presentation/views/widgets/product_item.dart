import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    required this.imageUrl,
    required this.tittle,
    required this.subTittle,
    required this.price, required this.rate,
  });
  final String imageUrl;
  final String tittle;
  final String subTittle;
  final double price;
  final double rate;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
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
                    child: SizedBox(
                      width: 100,
                      height: 80,
                      child: Image(
                        image: NetworkImage(imageUrl),

                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(tittle.substring(0,15), style: TextStyle(fontSize: 14),),
                  SizedBox(height: 4),
                  Text(
                    subTittle,
                    style: TextStyle(fontSize: 12),
                     overflow: TextOverflow.ellipsis,
                     maxLines: 2,
                  ),
                  SizedBox(height: 6),
                  Row(
                    children: [
                      Text(
                        "EGP ${price.toString()}",
                        style: TextStyle(fontSize: 12),
                      ),
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
                      Text("(${rate.toString()})", style: TextStyle(fontSize: 12)),
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
