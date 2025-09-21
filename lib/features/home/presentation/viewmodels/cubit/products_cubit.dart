import 'package:bloc/bloc.dart';
import 'package:fluttertask/features/home/data/models/product_model/product_model.dart';
import 'package:fluttertask/features/home/data/repos/home_repo.dart';
import 'package:meta/meta.dart';

part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit(this.homeRepo) : super(ProductsInitial());
  final HomeRepo homeRepo;
  Future<void> fetchAllProducts()async {
    emit(ProductsLoading());
    var res = await homeRepo.fethAllProducts();
    res.fold(  (Failure) {
        emit(ProductsFailure(Failure.errMessage));
      },
      (products) {
        emit(ProductsSuccess(products));
      },
    );
  }
}
