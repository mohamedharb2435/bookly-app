import 'package:dio/dio.dart';
abstract class Failures{
  final String errorMessage;

  Failures({required this.errorMessage});
}

class ServerFailure extends Failures {
  ServerFailure({required super.errorMessage});

  factory ServerFailure.fromDioError(DioError dioError){
    switch(dioError.type){
      
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errorMessage: 'Connection timeout with ApiServer ');
      case DioExceptionType.sendTimeout:
        return ServerFailure(errorMessage: 'Send  timeout with ApiServer ');
      case DioExceptionType.receiveTimeout:
        return ServerFailure(errorMessage: 'Receive timeout with ApiServer ');
      case DioExceptionType.badCertificate:
        // TODO: Handle this case.
      case DioExceptionType.badResponse:
       return ServerFailure.fromResponse(
           dioError.response!.statusCode!,dioError.response!.data
       );
      case DioExceptionType.cancel:
        return ServerFailure(errorMessage: 'Request to ApiServer was Cancel ');
      case DioExceptionType.connectionError:
        // TODO: Handle this case.
      case DioExceptionType.unknown:
        if(dioError.message!.contains('Socked Exception')){
          return ServerFailure(errorMessage:'No Internet Connection ');
        }
        return ServerFailure(errorMessage: 'Unexpected Error , Please Try again!');
      default:
        return ServerFailure(errorMessage:'Opps There was an Error , Please try again ' );
    }
  }
  factory ServerFailure.fromResponse(int statusCode , dynamic response){
   if(statusCode==400 || statusCode==401||statusCode==403){
     return ServerFailure(errorMessage: response['error']['message']);
   }else if (statusCode==404) {
     return ServerFailure(errorMessage: 'Your request not Found, please try again');
   }else if (statusCode == 500){
     return ServerFailure(errorMessage:'Internal Server error , please try again');
   }else {
     return ServerFailure(errorMessage: 'Opps There was an Error , Please try again ');
   }
  }
}