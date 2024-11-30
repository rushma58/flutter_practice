import 'package:dio/dio.dart';
import 'package:flutter_practice/core/constant/url.dart';

class HttpServices {
  static final HttpServices _instance = HttpServices._internal();
  factory HttpServices() => _instance;
  HttpServices._internal();

  static Dio? _dio;

  Dio getDioInstance() {
    if (_dio == null) {
      return _dio = Dio(
        BaseOptions(
          baseUrl: productDetailUrl,
          connectTimeout: const Duration(milliseconds: 10000),
        ),
      );
    } else {
      return _dio!;
    }
  }
}
