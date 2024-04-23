import 'package:bookly_app/core/utils/widgets/custom-error-message.dart';
import 'package:bookly_app/core/utils/widgets/custom-loading-indecator.dart';
import 'package:bookly_app/features/home/presentation/manager/fetch-similar-books/fetch_similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widget/custom-book-item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView  extends StatelessWidget {
  const SimilarBooksListView ({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchSimilarBooksCubit,FetchSimilarBooksState>(
  builder: (context, state) {
    if(state is FetchSimilarBooksSuccess){
      return SizedBox(
        height: MediaQuery.of(context).size.height*.14,
        child: ListView.builder(
          itemCount: state.books.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
            return  Padding(
              padding: const  EdgeInsets.symmetric(horizontal: 5),
              child:  CustomBookItem(
                imageUrl:state.books[index].volumeInfo.imageLinks?.thumbnail ?? ''
              ),
            );
          },),
      );
    }else if(state is FetchSimilarBooksFailure){
      return CustomErrorMessage(errorMessage: state.errorMessage);
    }else{
      return const CustomLoadingIndicator();
    }
  },
);
  }
}