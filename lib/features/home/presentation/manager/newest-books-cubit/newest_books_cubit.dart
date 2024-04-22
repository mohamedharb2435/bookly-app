import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/repos/home-repo.dart';
import 'package:bookly_app/features/home/presentation/data/models/book_mode.dart';
import 'package:meta/meta.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchFeaturedNewestBooks() async{
    emit(NewestBooksLoading());
    var result = await homeRepo.fetchNewSetBooks();
    result.fold((failures) =>{
      emit(NewestBooksFailure(errorMessage: failures.errorMessage))
    }, (books) => {
      emit(NewestBooksSuccess(books))
    });
  }
}
