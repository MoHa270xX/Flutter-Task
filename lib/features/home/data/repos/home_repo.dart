import 'package:dartz/dartz.dart';
import 'package:fluttertask/core/errors/failure.dart';
import 'package:fluttertask/features/home/data/models/product_model/product_model.dart';

abstract class HomeRepo {
  Future<Either<Failure,List<ProductModel>>> fetchProducts();
}
