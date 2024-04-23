part of 'fetch_similar_books_cubit.dart';

@immutable
sealed class FetchSimilarBooksState {}

final class FetchSimilarBooksInitial extends FetchSimilarBooksState {}
class  FetchSimilarBooksLoading extends FetchSimilarBooksState{}
class  FetchSimilarBooksFailure extends FetchSimilarBooksState{
  final String errorMessage;
  FetchSimilarBooksFailure({required this.errorMessage});
}
class  FetchSimilarBooksSuccess extends FetchSimilarBooksState{
  List<BookModel>books;
  FetchSimilarBooksSuccess(this.books);
}