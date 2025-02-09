import 'package:bookly_app/core/errors/faliure.dart';
import 'package:bookly_app/core/utils/api_services.dart';
import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class ImplementHomeRepo extends HomeRepo {
  
  final ApiServices apiServices;

  ImplementHomeRepo(this.apiServices);

  @override
   Future<Either<Failure, List<BookModel>>> feachNewstBooks() async {
    try {
      var data = await apiServices.get(
          endPoint: 'https://www.googleapis.com/books/v1/volumes?q=subject:Programming&filtering=free-ebooks&sorting=newst');

      if (data['items'] == null) {
        return left(ServerFailure("No books found."));
      }

      List<BookModel> books = data['items']
          .map<BookModel>((item) => BookModel.fromJson(item))
          .toList();

      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> feachFeatucreBooks() async{
    try {
      var data = await apiServices.get(
          endPoint: 'https://www.googleapis.com/books/v1/volumes?q=subject:Programming&filtering=free-ebooks');

      if (data['items'] == null) {
        return left(ServerFailure("No books found."));
      }

      List<BookModel> books = data['items']
          .map<BookModel>((item) => BookModel.fromJson(item))
          .toList();

      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
  

}
