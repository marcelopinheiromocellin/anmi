import 'package:dio/dio.dart';

class CustomDio {
  var _dio;

  CustomDio() {
    _dio = Dio();
  }

  CustomDio.whithAuthentication() {
    _dio = Dio();
  }

  BaseOptions options = BaseOptions(
    baseUrl: 'http://localhost:8888',
  );
}
