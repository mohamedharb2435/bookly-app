import 'package:bookly_app/core/utils/errors/failures.dart';
import 'package:bookly_app/features/home/data/repos/home-repo.dart';
import 'package:bookly_app/features/home/presentation/data/models/book_mode.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImp implements HomeRepo{
  @override
  Future<Either<Failures, List<BookModel>>> fetchBestSellerBooks() {
    // TODO: implement fetchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }

}