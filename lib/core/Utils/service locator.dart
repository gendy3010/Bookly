import 'package:bookly_app/core/Utils/api%20service.dart';
import 'package:bookly_app/features/home/data/repos/Home%20Repo%20Impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setup(){
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(
    getIt.get<ApiService>(),
  ));

}

