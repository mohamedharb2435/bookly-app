part of 'newest_books_cubit.dart';

@immutable
sealed class NewestBooksState {}

final class NewestBooksInitial extends NewestBooksState {}
class  NewestBooksLoading extends NewestBooksState{}
class  NewestBooksFailure extends NewestBooksState{
  final String errorMessage;
  NewestBooksFailure({required this.errorMessage});
}
class  NewestBooksSuccess extends NewestBooksState{
  List<BookModel>books;
  NewestBooksSuccess(this.books);
}
