import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/presentation/data/models/book_mode.dart';
import 'package:meta/meta.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit() : super(FeaturedBooksInitial());
}
