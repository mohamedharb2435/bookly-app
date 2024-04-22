import 'package:bookly_app/core/utils/api-service.dart';
import 'package:bookly_app/core/utils/errors/failures.dart';
import 'package:bookly_app/features/home/data/repos/home-repo.dart';
import 'package:bookly_app/features/home/presentation/data/models/book_mode.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImp implements HomeRepo {
  ApiService apiService;
  HomeRepoImp(this.apiService);

  @override
  Future<Either<Failures, List<BookModel>>> fetchNewSetBooks() async {
    try {
      var data = await apiService.get(
          endPoints:
          'volumes?Filtering=free-ebooks&Sorting=newest&q=subject:programming');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
