import 'package:auto_router_pkg/di/providers/proxy_dio_provider.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class NetworkModule {
  @lazySingleton
  Dio provideDio(DioProvider dioProvider) {
    return dioProvider.getDio();
  }
}
