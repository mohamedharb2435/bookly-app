import 'package:bookly_app/features/home/presentation/views/widget/custom-book-details-app-bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'books-details-section.dart';
import 'similar-books-sections.dart';
class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 30),
            child:  Column(
              children: [
                 CustomBookDetailsAppBar(),
                 BookDetailsSection(),
                 Expanded(child:  SizedBox(height: 50,)),
                 SimilarBooksSections(),
                 SizedBox(height: 10,)
              ],
            ),
          )
        ),
      ],
    );
  }
}





