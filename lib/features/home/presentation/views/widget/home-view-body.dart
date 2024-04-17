import 'package:bookly_app/features/home/presentation/views/widget/custom-app-bar.dart';
import 'package:bookly_app/features/home/presentation/views/widget/custom-list-view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
        children:  [
          CustomAppBar(),
          FeaturedBooksListView(),
        ],
      );
  }
}
class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
           return const Padding(
             padding:  EdgeInsets.symmetric(horizontal: 8),
             child:  FeaturedListViewItem(),
           );
      },),
    );
  }
}


