import 'package:dio/dio.dart';

class DioHelper {

  static const baseUrl = 'https://www.googleapis.com/books/v1/';
  static late Dio dio ;
  static void  initialObject()
  {
    dio = Dio(
        BaseOptions(
          baseUrl: baseUrl,
          receiveDataWhenStatusError: true,
        )
    );
  }

  static Future<Map<String,dynamic>> get({required String endPoint}) async {
    return await dio.get(endPoint).then((value) => value.data);
  }
}