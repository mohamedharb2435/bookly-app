import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widget/booking_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widget/custom-book-details-app-bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'books-actions.dart';
import 'custom-book-item.dart';
import 'similar-books-list-view.dart';
class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child:  Column(
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal:width*.2 ),
            child: const CustomBookItem(),
          ),
          const SizedBox(height: 35,),
          Text('The Jungle Book',style: Styles.textStyle30.copyWith(
            fontWeight: FontWeight.bold,
          ),),
          const SizedBox(height: 6 ,),
          Opacity(
            opacity: .7,
            child: Text('Rudyard Kipling',style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500
            ),),
          ),
          const SizedBox(height: 16,),
          const BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(height: 35,),
          const BooksAction(),
          const SizedBox(height: 40,),
          Align(
            alignment: Alignment.centerLeft,
            child: Text('You Can alo Like',style: Styles.textStyle14.copyWith(
              fontWeight: FontWeight.w700 ,
            ),),
          ),
          const SizedBox(height: 16,),
          const SimilarBooksListView(),
          const SizedBox(height: 20,),
        ],
      ),
    );
  }
}



