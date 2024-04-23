import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/data/models/book_model.dart';
import 'package:flutter/material.dart';

import 'booking_rating.dart';
import 'books-actions.dart';
import 'custom-book-item.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({Key? key, required this.bookModel}) : super(key: key);

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.2),
          child: CustomBookItem(
            imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? '',
          ),
        ),
        const SizedBox(height: 35),
        Text(
          bookModel.volumeInfo.title ?? '',
          style: Styles.textStyle30.copyWith(
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 6),
        Opacity(
          opacity: .7,
          child: Text(
            bookModel.volumeInfo.authors?.isNotEmpty == true ? bookModel.volumeInfo.authors![0] : '',
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(height: 16),
        BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          rating: bookModel.volumeInfo.averageRating?.toInt() ?? 0,
          count: bookModel.volumeInfo.ratingsCount?.toInt() ?? 0,
        ),
        const SizedBox(height: 35),
        const BooksAction(),
      ],
    );
  }
}
