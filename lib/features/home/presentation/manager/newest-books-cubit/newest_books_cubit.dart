import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/presentation/data/models/book_mode.dart';
import 'package:meta/meta.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit() : super(NewestBooksInitial());
}
