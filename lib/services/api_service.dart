import 'dart:developer';

import 'package:dio/dio.dart';

class ApiService {
  final _dio = Dio();

  Future<Response> get({
    required String baseUrl,
  }) async {
    try {
      final Response response = await _dio.get('$baseUrl');
      return response;
    } catch (e) {
      log('$e');
      throw ('Something went wrong');
    }
  }

  Future<Response> post({
    required String baseUrl,
    required String path,
    dynamic body,
  }) async {
    try {
      final response = await _dio.post(
        '$baseUrl$path',
        data: body,
        options: Options(
          followRedirects: false,
          // will not throw errors
          validateStatus: (status) => true,
          headers: {
            'Content-Type': 'application/json',
          },
        ),
      );
      return response;
    } catch (e) {
      log('$e');
      throw ('Something went wrong');
    }
  }
}
