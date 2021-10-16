import 'package:dio/dio.dart';

class Diohelper {
  static late Dio dio;
  static init() {
    dio = Dio(BaseOptions(
      baseUrl: '192.168.0.70:3000',
      receiveDataWhenStatusError: true,
    ));
  }

  static Future<Response> getdata({
    required String url,
  }) async {
    return await dio.get(url);
  }
}
