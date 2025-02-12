part of 'newest_books_cubit.dart';

@immutable
sealed class NewestBooksState {}

final class NewestBooksInitial extends NewestBooksState {}
final class NewestBooksLoading extends NewestBooksState {}
final class NewestBoosSuccess extends NewestBooksState {
  final List<BookModel> books;

  NewestBoosSuccess(this.books);
}
final class NewestBooksFaliure extends NewestBooksState {
  final String errMessage;

   NewestBooksFaliure(this.errMessage);


}
