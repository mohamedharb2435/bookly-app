import 'package:bookly_app/core/utils/api-service.dart';
import 'package:bookly_app/features/home/data/repos/home-repo-imp.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt=GetIt.instance;

void SetupServiceLocator(){
 getIt.registerSingleton<ApiService>(ApiService(Dio()));
 getIt.registerSingleton<HomeRepoImp>(HomeRepoImp(
  getIt.get<ApiService>(),
 ),);
}