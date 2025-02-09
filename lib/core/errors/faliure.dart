import 'package:dio/dio.dart';


abstract class Failure {
  final String errMessage;

  const Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioError(DioException dioError) {
    {
      switch (dioError.type) {
        case DioExceptionType.connectionTimeout:
          return ServerFailure("Connection timed out. Please try again.");
        case DioExceptionType.sendTimeout:
          return ServerFailure("Send timeout. Please try again.");
        case DioExceptionType.receiveTimeout:
          return ServerFailure("Receive timeout. Please try again.");
        case DioExceptionType.badResponse:
          return ServerFailure.fromResponse(dioError.response!.statusCode!, dioError.response!.data);
        case DioExceptionType.cancel:
          return ServerFailure("Request was cancelled.");
        case DioExceptionType.connectionError:
          return ServerFailure("No internet connection.");
        case DioExceptionType.unknown:
        default:
          return ServerFailure("An unexpected error occurred.");
      }
    }
  }

factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']["message"] ?? "Authentication error");
    } else if (statusCode == 404) {
      return ServerFailure("Resource not found");
    } else if (statusCode == 500) {
      return ServerFailure("Internal server error");
    } else {
      return ServerFailure("Unexpected error occurred");
    }
  }
}


