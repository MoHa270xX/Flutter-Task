import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertask/core/utils/api_services.dart';
import 'package:fluttertask/core/utils/server_locator.dart';
import 'package:fluttertask/features/home/data/repos/home_repo.dart';
import 'package:fluttertask/features/home/data/repos/home_repo_imple.dart';
import 'package:fluttertask/features/home/presentation/viewmodels/cubit/products_cubit.dart';
import 'package:fluttertask/features/home/presentation/views/home_page.dart';

void main() {
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductsCubit(getIt.get<HomeRepoImple>())..fetchAllProducts(),
      child: MaterialApp(debugShowCheckedModeBanner: false, home: HomePage()),
    );
  }
}
