import 'package:dio/dio.dart';

class DioHelper {

  static const baseUrl = 'http://www.googleapis.com/books/v1/';
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



  Future<Map<String,dynamic>> get({required String endPoint}) async {
    return await dio.get(endPoint).then((value) => value.data);
  }
}