import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:bookly_app/constant.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/data/models/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widget/booking_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widget/custom-book-item.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({Key? key, required this.bookModel}) : super(key: key);

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: Row(
        children: [
          SizedBox(
            height: 125,
            child: CustomBookItem(
              imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? '', // Null check added here
            ),
          ),
          const SizedBox(width: 30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(
                    bookModel.volumeInfo.title ?? '', // Null check added here
                    style: Styles.textStyle20.copyWith(
                      fontFamily: kGTSectraFine,
                    ),
                    maxLines: 2,
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  bookModel.volumeInfo.authors?.isNotEmpty == true
                      ? bookModel.volumeInfo.authors![0]
                      : 'Author Unknown', // Placeholder text for empty authors
                  style: Styles.textStyle14,
                ),
                const SizedBox(height: 3),
                Row(
                  children: [
                    Text(
                      'FREE',
                      style: Styles.textStyle20.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    BookRating(
                      count: bookModel.volumeInfo.ratingsCount?.toInt() ?? 0, // Ensure count is converted to int
                      rating: bookModel.volumeInfo.averageRating?.toInt() ?? 0,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
