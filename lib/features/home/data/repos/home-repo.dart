import 'package:bookly_app/core/utils/errors/failures.dart';
import 'package:dartz/dartz.dart';

import '../../presentation/data/models/book_model.dart';

abstract class HomeRepo{
 Future <Either<Failures,List<BookModel>>> fetchNewSetBooks();
 Future <Either<Failures,List<BookModel>>>fetchFeaturedBooks();
 Future <Either<Failures,List<BookModel>>>fetchSimilarBooks({required String category});
}