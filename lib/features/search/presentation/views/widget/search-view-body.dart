import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widget/best-seller-list-view-iteam.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'custom-search-text-field.dart';
import 'search-result-list-view.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 30),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          SizedBox(height: 16,),
          Text(
            'Best Seller',
            style: Styles.textStyle18,
          ),
          SizedBox(height: 16,),
          Expanded(child: SearchResultListView()),

        ],
      ),
    );
  }
}



