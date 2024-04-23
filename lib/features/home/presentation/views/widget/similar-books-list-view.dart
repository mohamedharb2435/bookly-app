import 'package:bookly_app/features/home/presentation/views/widget/custom-book-item.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView  extends StatelessWidget {
  const SimilarBooksListView ({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.14,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){
          return const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 5),
            child:  CustomBookItem(imageUrl: 'https://th.bing.com/th/id/OIP.DdyCihWLBtCN4CQjBsVnsQHaLH?rs=1&pid=ImgDetMain',),
          );
        },),
    );
  }
}