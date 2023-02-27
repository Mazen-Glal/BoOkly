import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;
  const Failure(this.errorMessage);
}

class ServerFailure extends Failure
{
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioError(DioError dioError)
  {
    switch(dioError.type)
    {
      case DioErrorType.connectionTimeout:
        return ServerFailure('Connection timeout with ApiServer');
      case DioErrorType.sendTimeout:
        return ServerFailure('Send timeout with ApiServer');
      case DioErrorType.receiveTimeout:
        return ServerFailure('Receive timeout with ApiServer');
      case DioErrorType.badCertificate:
        return ServerFailure('Bad Certificate with ApiServer');
      case DioErrorType.badResponse:
        return ServerFailure.fromResponse(dioError.response!.statusCode!, dioError.response!.data);
      case DioErrorType.cancel:
        return ServerFailure('request to ApiServer was canceled');
      case DioErrorType.connectionError:
        return ServerFailure('connection Error with ApiServer');
      case DioErrorType.unknown:
        if(dioError.message!.contains('SocketException')){
          return ServerFailure('No internet Connection');
        }
        return ServerFailure('Unexpected Error, please try again !!');
      default:
        return ServerFailure('Opps There was an error,please try again');
    }
  }

  factory ServerFailure.fromResponse(int statusCode,dynamic response){

    if(statusCode == 400 || statusCode == 401 || statusCode == 403 )
    {
      return ServerFailure(response['error']['message']);

    }else if(statusCode == 404)
    {
      return ServerFailure('your request not Found, please try later');

    }else if(statusCode == 500)
    {
      return ServerFailure('Interval Server error, please try later');

    }else
    {
      return ServerFailure('Opps There was an error,please try again');
    }
  }
}