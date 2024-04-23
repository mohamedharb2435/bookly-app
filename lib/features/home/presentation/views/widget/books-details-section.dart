import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'booking_rating.dart';
import 'books-actions.dart';
import 'custom-book-item.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal:width*.2 ),
          child: const CustomBookItem(imageUrl: 'https://th.bing.com/th/id/OIP.DdyCihWLBtCN4CQjBsVnsQHaLH?rs=1&pid=ImgDetMain',),
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
      ],
    );
  }
}