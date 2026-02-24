import 'dart:io';

import 'package:auto_router_pkg/common/constants/env.dart';
import 'package:auto_router_pkg/common/constants/hive_keys.dart';
import 'package:auto_router_pkg/di/interceptors/app_interceptors.dart';
import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class DioProvider {
  final Box<dynamic> _authBox;

  DioProvider(@Named(HiveKeys.authBox) this._authBox);

  Dio? _dio;
  Dio getDio() => _dio ?? _createDio();

  Dio _createDio() {
    final dio = Dio(
      BaseOptions(
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        sendTimeout: const Duration(seconds: 30),
      ),
    );

    final appInterceptor = AppInterceptor(authBox: _authBox);

    _dio = dio
      ..options.headers = {
        HttpHeaders.contentTypeHeader: ContentType.json.value,
        HttpHeaders.authorizationHeader: 'Bearer ${Env.clientBearer}',
      }
      ..options.baseUrl = Env.baseUrl
      ..interceptors.addAll([appInterceptor]);
    return dio;
  }
}
