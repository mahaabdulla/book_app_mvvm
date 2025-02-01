import 'package:bookly_app/core/errors/faliure.dart';
import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class ImplementHomeRepo  extends HomeRepo{
  @override
  Future<Either<Failure, List<BookModel>>> feachBestSellerBooks() {
  
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> feachFeatucreBooks() {
  
    throw UnimplementedError();
  }

}