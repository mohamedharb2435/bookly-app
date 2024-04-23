import 'package:bookly_app/features/home/presentation/data/models/book_model.dart';
import 'package:bookly_app/features/home/presentation/manager/fetch-similar-books/fetch_similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widget/book-details-view-body.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.bookModel});
  final BookModel bookModel ;
  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    BlocProvider.of<FetchSimilarBooksCubit>(context).fetchSimilarBooks(
      category:widget.bookModel.volumeInfo.categories![0],
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:SafeArea(
          child: BookDetailsViewBody()
      ),
    );
  }
}
