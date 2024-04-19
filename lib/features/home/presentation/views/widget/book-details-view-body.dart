import 'package:bookly_app/features/home/presentation/views/widget/custom-book-details-app-bar.dart';
import 'package:flutter/material.dart';
class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 30),
      child:  Column(
        children: [
          CustomBookDetailsAppBar(),
        ],
      ),
    );
  }
}
