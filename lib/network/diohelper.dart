import 'package:dio/dio.dart';

class Diohelper {
  static late Dio dio;

  static init() {
    dio = Dio(BaseOptions(
      baseUrl: "",
      receiveDataWhenStatusError: true,
    ));
  }

  Future<Response> getdata({
    required String url,
  }) async {
    return await dio.get(url);
  }
}
