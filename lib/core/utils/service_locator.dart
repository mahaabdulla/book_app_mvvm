import 'package:bookly_app/core/utils/api_services.dart';
import 'package:bookly_app/features/home/data/repos/implement_home_repo.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiServices>(ApiServices(Dio())); // singltone api servise

  getIt.registerSingleton<ImplementHomeRepo>(
    ImplementHomeRepo(getIt.get<ApiServices>()),
  );
}
