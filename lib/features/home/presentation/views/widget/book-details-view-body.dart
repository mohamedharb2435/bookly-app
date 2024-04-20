import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/utils/widgets/custom-button.dart';
import 'package:bookly_app/features/home/presentation/views/widget/booking_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widget/custom-book-details-app-bar.dart';
import 'package:flutter/material.dart';

import 'custom-book-item.dart';
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
          const SizedBox(height: 43,),
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
          const SizedBox(height: 37,),
          const BooksAction(),
        ],
      ),
    );
  }
}
class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
                backGround: Colors.white,
                textColor: Colors.black,
                text:'19.9%',
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft:  Radius.circular(16),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              backGround: Color(0xffEF8262),
              textColor: Colors.white,
              text:'Free Preview',
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight:  Radius.circular(16),
              ),
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

