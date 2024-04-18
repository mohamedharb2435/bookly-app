import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widget/custom-app-bar.dart';
import 'package:bookly_app/features/home/presentation/views/widget/featured-list-view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 24),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            CustomAppBar(),
            FeaturedBooksListView(),
            SizedBox(height: 50,),
            Text('Best Seller',
              style: Styles.titleMedium ,
            )
          ],
        ),
    );
  }
}



