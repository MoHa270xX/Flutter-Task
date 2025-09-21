import 'package:flutter/material.dart';
import 'package:fluttertask/features/home/presentation/views/widgets/product_item.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: 10, 
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, 
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 75/95, 
          ),
          itemBuilder: (context, index) {
            return const ProductItem();
          },
        ),
      ),
    );
  }
}

