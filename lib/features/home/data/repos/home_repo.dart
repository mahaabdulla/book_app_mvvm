import 'package:bookly_app/core/errors/faliure.dart';
import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

// repo DP
abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> feachNewstBooks();
  Future<Either<Failure, List<BookModel>>> feachFeatucreBooks();
}
