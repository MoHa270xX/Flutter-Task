import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertask/core/utils/widgets/custom_error_massage.dart';
import 'package:fluttertask/features/home/presentation/viewmodels/cubit/products_cubit.dart';
import 'package:fluttertask/features/home/presentation/views/widgets/product_item.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocBuilder<ProductsCubit, ProductsState>(
          builder: (context, state) {
            if (state is ProductsSuccess) {
              return GridView.builder(
                itemCount: state.products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio:.75,
                ),
                itemBuilder: (context, index) {
                  return ProductItem(imageUrl: state.products[index].image!,tittle: state.products[index].title!,subTittle: state.products[index].description!,price: state.products[index].price!,rate: state.products[index].rating!.rate!,);
                },
              );
            } else if (state is ProductsFailure) {
              return CustomErrorMassage(errmassage: state.errmassage);
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
