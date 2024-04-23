import 'package:bookly_app/core/utils/api-service.dart';
import 'package:bookly_app/core/utils/errors/failures.dart';
import 'package:bookly_app/features/home/data/repos/home-repo.dart';
import 'package:bookly_app/features/home/presentation/data/models/book_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImp implements HomeRepo {
  ApiService apiService;
  HomeRepoImp(this.apiService);

  @override
  Future<Either<Failures, List<BookModel>>> fetchNewSetBooks() async {
    try {
      var data = await apiService.get(
          endPoints:
          'volumes?Filtering=free-ebooks&Sorting=newest&q=subject:computer science');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if(e is DioError){
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(errorMessage:e.toString()
      )
      );
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks() async{
    try {
      var data = await apiService.get(
          endPoints:
          'volumes?Filtering=free-ebooks&q=subject:programming');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if(e is DioError){
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(errorMessage:e.toString()
      )
      );
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchSimilarBooks({required String category}) async{
    try {
      var data = await apiService.get(
          endPoints:
          'https://www.googleapis.com/books/v1/volumes?Filtering=free-ebooks&Sorting=relevance&q=subject:programming');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if(e is DioError){
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(errorMessage:e.toString()
      )
      );
    }
  }
}
