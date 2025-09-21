import 'package:bloc/bloc.dart';
import 'package:fluttertask/features/home/data/models/product_model/product_model.dart';
import 'package:meta/meta.dart';

part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit() : super(ProductsInitial());
}
