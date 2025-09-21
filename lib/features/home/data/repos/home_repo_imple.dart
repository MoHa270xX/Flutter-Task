import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:fluttertask/core/errors/failure.dart';
import 'package:fluttertask/core/utils/api_services.dart';
import 'package:fluttertask/features/home/data/models/product_model/product_model.dart';
import 'package:fluttertask/features/home/data/repos/home_repo.dart';

class HomeRepoImple implements HomeRepo {
  final ApiService apiService;
  HomeRepoImple(this.apiService);

  @override
  Future<Either<Failure, List<ProductModel>>> fetchProducts() async {
    try {
      var data = await apiService.getdata();
      List<ProductModel> products = [];
      for (int i = 0; i < data.length; i++) {
        products.add(ProductModel.fromJson(data[i]));
      }
      return Right(products);
    } catch (e) {
      if (e is DioError) {
        return left(
          ServerFailure.fromDioError(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }
}
