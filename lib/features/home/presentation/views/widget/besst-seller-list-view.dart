import 'package:bookly_app/core/utils/widgets/custom-error-message.dart';
import 'package:bookly_app/core/utils/widgets/custom-loading-indecator.dart';
import 'package:bookly_app/features/home/presentation/manager/newest-books-cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'best-seller-list-view-iteam.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
            itemCount: state.books.length,
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return  Padding(
                padding:const EdgeInsets.symmetric(vertical: 8),
                child: Padding(
                  padding:const EdgeInsets.symmetric(horizontal: 30),
                  child: BookListViewItem(
                    bookModel:state.books[index] ,
                  ),
                ),
              );
            },
          );
        } else
        if (state is NewestBooksFailure) {
          return CustomErrorMessage(errorMessage: state.errorMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
