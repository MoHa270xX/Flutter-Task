import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = "https://fakestoreapi.com/products";
  final Dio dio;
  ApiService(this.dio);
  Future<Map<dynamic, String>> getdata() async {
    var response = await dio.get(_baseUrl);
    return response.data;
  }
}
