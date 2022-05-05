import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

// This module allows me to get these instances in any repository.

@module
abstract class ClientsInjectableModule {
  @lazySingleton
  Dio get httpClient {
    final _dio = Dio(
      BaseOptions(
        baseUrl: 'https://jsonplaceholder.typicode.com/',
        connectTimeout: 5000,
        receiveTimeout: 3000,
      ),
    );
    _dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
      ),
    );
    return _dio;
  }

  @lazySingleton
  Logger get logger => Logger(
        printer: PrettyPrinter(
          lineLength: 80,
          printTime: true,
          methodCount: 3,
        ),
      );
}
