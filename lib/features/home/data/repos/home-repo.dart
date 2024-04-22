import 'package:bookly_app/core/utils/errors/failures.dart';
import 'package:bookly_app/features/home/presentation/data/models/book_mode.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo{
 Future <Either<Failures,List<BookModel>>> fetchBestSellerBooks();
 Future <Either<Failures,List<BookModel>>>fetchFeaturedBooks();
}