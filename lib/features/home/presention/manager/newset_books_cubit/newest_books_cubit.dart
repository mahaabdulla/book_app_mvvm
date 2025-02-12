import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:meta/meta.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());


   HomeRepo homeRepo;

  Future<void> feachNewestBooks() async {
    emit(NewestBooksLoading());
    var result = await homeRepo.feachFeatucreBooks();
    result.fold((faliur) {
      emit(NewestBooksFaliure(faliur.errMessage));
    }, (books) {
      emit(NewestBoosSuccess(books));
    });
  }
}
