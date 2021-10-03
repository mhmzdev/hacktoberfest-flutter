import 'package:dio/dio.dart';

class ApiServices {
  Dio launch() {
    final accessToken = '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';
    Dio dio = new Dio();
    dio.interceptors.add(LogInterceptor(responseBody: true, requestBody: true));
    dio.options.headers['Content-Type'] = 'application/json';
    dio.options.headers["accept"] = 'application/json';
//if the request need token in bearer only then uncomment this
    // if (accessToken != null)
    //   dio.options.headers["Authorization"] = 'Bearer $accessToken';
    // dio.options.followRedirects = false;
    // dio.options.validateStatus = (s) {
    //   if (s != null)
    //     return s < 500;
    //   else
    //     return false;
    // };

    return dio;
  }
}
