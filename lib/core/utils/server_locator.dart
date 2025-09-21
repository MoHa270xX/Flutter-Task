import 'package:dio/dio.dart';
import 'package:fluttertask/core/utils/api_services.dart';
import 'package:fluttertask/features/home/data/repos/home_repo_imple.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setup() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImple>(HomeRepoImple(getIt.get<ApiService>()));
}
